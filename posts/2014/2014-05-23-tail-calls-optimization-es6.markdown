---
layout: post
title: "Tail Calls, Optimization, and ES6"
date: 2014-05-23 05:00:00 -0600
comments: false
categories: 
- Software Illustrated
- Internals
- Programming
---

In this penultimate post about the stack, we take a quick look at **tail
calls**, compiler optimizations, and the *proper tail calls* landing in the
newest version of JavaScript.

A **tail call** happens when a function `F` makes a function call as its final
action. At that point `F` will do absolutely no more work: it passes the ball to
whatever function is being called and vanishes from the game. This is notable
because it opens up the possibility of **tail call optimization**: instead of
[creating a new stack frame][stack] for the function call, we can simply _reuse_
`F`'s stack frame, thereby saving stack space and avoiding the work involved in
setting up a new frame. Here are some examples in C and their results compiled
with [mild optimization][asm-tco]:

{% include_code Simple Tail Calls x86-stack/tail.c %}

You can normally spot tail call optimization (hereafter, TCO) in compiler output
by seeing a [jump][jmpadd5] instruction where a [call][calladd5] would have been
expected. At runtime TCO leads to a reduced call stack.

A common misconception is that tail calls are necessarily
[recursive][recursion]. That's not the case: a tail call _may_ be recursive,
such as in `finicky()` above, but it need not be. As long as caller `F` is
completely done at the call site, we've got ourselves a tail call. *Whether it
can be optimized* is a different question whose answer depends on your
programming environment.

"Yes, it can, always!" is the best answer we can hope for, which is famously the
case for Scheme, as discussed in [SICP][SICP] (by the way, if when you program
you don't feel like "a Sorcerer conjuring the spirits of the computer with your
spells," I urge you to read that book). It's also the case for [Lua][Lua].  And
most importantly, it is the case for the next version of JavaScript, ES6, whose
spec does a good job defining [tail position][js-tail] and clarifying the few
conditions required for optimization, such as [strict mode][js-strict].  When
a language guarantees TCO, it supports *proper tail calls*.

Now some of us can't kick that C habit, heart bleed and all, and the answer
there is a more complicated "sometimes" that takes us into compiler optimization
territory.  We've seen the [simple examples][tail] above; now let's resurrect
our factorial from [last post][recursion]:

{% include_code Recursive Factorial x86-stack/factorial.c %}

So, is line 11 a tail call? It's not, because of the multiplication by `n`
afterwards. But if you're not used to optimizations, gcc's
[result][factorial-o2] with [O2 optimization][O2] might shock you: not only it
transforms `factorial` into a [recursion-free loop][factorial-loop], but the
`factorial(5)` call is eliminated entirely and replaced by a 
[compile-time constant][factorial-120] of 120 (5! == 120).  This is why debugging optimized
code can be hard sometimes. On the plus side, if you call this function it will
use a single stack frame regardless of n's initial value.  Compiler algorithms
are pretty fun, and if you're interested I suggest you check out
[Building an Optimizing Compiler][boc] and [ACDI][ACDI].

However, what happened here was **not** tail call optimization, since there was
_no tail call to begin with_. gcc outsmarted us by analyzing what the function
does and optimizing away the needless recursion. The task was made easier by
the simple, deterministic nature of the operations being done. By adding a dash
of chaos (_e.g._, `getpid()`) we can throw gcc off:

{% include_code Recursive PID Factorial x86-stack/pidFactorial.c %}

Optimize *that*, unix fairies! So now we have a regular
[recursive call][call-pidFactorial] and this function allocates O(n) stack
frames to do its work. Heroically, gcc still does [TCO for getpid][jmp-getpid]
in the recursion base case. If we now wished to make this function tail recursive,
we'd need a slight change:

{% include_code x86-stack/tailPidFactorial.c %}

The accumulation of the result is now [a loop][tailPidFactorial-tco] and we've
achieved true TCO. But before you go out partying, what can we say about the
general case in C? Sadly, while good C compilers do TCO in a number of cases,
there are many situations where they cannot do it. For example, as we saw in our
[function epilogues][epilogues], the _caller_ is responsible for cleaning up the
stack after a function call using the standard C calling convention. So if
function `F` takes two arguments, it can only make TCO calls to functions taking
two or fewer arguments. This is one among many restrictions. Mark Probst wrote
an excellent thesis discussing [Proper Tail Recursion in C][thesis] where he
discusses these issues along with C stack behavior. He also does
[insanely cool juggling][juggling].

"Sometimes" is a rocky foundation for any relationship, so you can't rely on TCO
in C. It's a discrete optimization that may or may not take place, rather than
a language *feature* like proper tail calls, though in practice the compiler
will optimize the vast majority of cases. But if you *must have it*, say for
transpiling Scheme into C, you will [suffer][scheme-in-c].

Since JavaScript is now the most popular transpilation target, proper tail calls
become even more important there. So kudos to ES6 for delivering it along with
many other significant improvements. It's like Christmas for JS programmers.

This concludes our brief tour of tail calls compiler optimization.  Thanks for
reading and see you next time.

[SICP]: http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html
[Lua]: http://www.lua.org/pil/6.3.html
[js-strict]: https://people.mozilla.org/~jorendorff/es6-draft.html#sec-strict-mode-code
[js-tail]: https://people.mozilla.org/~jorendorff/es6-draft.html#sec-tail-position-calls
[chicken]: http://en.wikipedia.org/wiki/CHICKEN_%28Scheme_implementation%29#Design
[scheme-in-c]: http://en.wikipedia.org/wiki/Tail_call#Through_trampolining

[guido-on-tco]: http://neopythonic.blogspot.com.br/2009/04/tail-recursion-elimination.html

[stack]: /post/journey-to-the-stack "Journey to the Stack"
[epilogues]: /post/epilogues-canaries-buffer-overflows/
[recursion]: /post/recursion/
[caches]: /post/intel-cpu-caches/
[while-you-wait]: /post/what-your-computer-does-while-you-wait/
[performance]: /post/performance-is-a-science

[boc]: http://www.amazon.com/Building-Optimizing-Compiler-Bob-Morgan-ebook/dp/B008COCE9G/
[ACDI]: www.amazon.com/Advanced-Compiler-Design-Implementation-Muchnick-ebook/dp/B003VM7GGK/

[mark]: http://www.complang.tuwien.ac.at/schani/
[juggling]: http://www.complang.tuwien.ac.at/schani/jugglevids/index.html
[thesis]: http://www.complang.tuwien.ac.at/schani/diplarb.ps

[O2]: https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html

[asm-tco]: https://github.com/gduarte/blog/blob/master/code/x86-stack/asm-tco.sh

[tail]: https://github.com/gduarte/blog/blob/master/code/x86-stack/tail.c
[jmpadd5]: https://github.com/gduarte/blog/blob/master/code/x86-stack/tail-tco.s#L27
[calladd5]: https://github.com/gduarte/blog/blob/master/code/x86-stack/tail.s#L37-L39

[factorial-o2]: https://github.com/gduarte/blog/blob/master/code/x86-stack/factorial-o2.s
[factorial-120]: https://github.com/gduarte/blog/blob/master/code/x86-stack/factorial-o2.s#L38
[factorial-loop]: https://github.com/gduarte/blog/blob/master/code/x86-stack/factorial-o2.s#L16-L19

[pidFactorial-o2]: https://github.com/gduarte/blog/blob/master/code/x86-stack/pidFactorial-o2.s
[call-pidFactorial]: https://github.com/gduarte/blog/blob/master/code/x86-stack/pidFactorial-o2.s#L20
[jmp-getpid]: https://github.com/gduarte/blog/blob/master/code/x86-stack/pidFactorial-o2.s#L43

[tailPidFactorial-tco]: https://github.com/gduarte/blog/blob/master/code/x86-stack/tailPidFactorial-o2.s#L22-L27
