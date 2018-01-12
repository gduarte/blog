---
title: Goto and the folly of dogma
date: 2018-01-11 13:00:00 -0600
categories:
- [programming]
---

Many programmers are surprised to find out that the `goto` statement is still
widely used in modern, high-quality codebases. Here are some examples, using the
first codebases that come to mind:

| Repo           | `goto` usages   | ratio to `continue` |
|----------------|-----------------|---------------------|
| Linux kernel   | [150k][kernel-goto] | [6.27][kernel-ratio]  |
| .net CLR       | [5k][clr-goto]    | [2.13][clr-ratio]   |
| git            | [960][git-goto]   | [0.76][git-ratio]    |
| Python runtime | [5k][python-goto] | [16.9][python-ratio] |
| Redis          | [554][redis-goto] | [2.14][redis-ratio]  |

The ratio to usages of the `continue` keyword is provided to normalize for lines
of code and the prevalence of loops in the code.  This is not limited to C code
bases.  Lucene<span>.</span>net for example has [1,511][lucenenet] `goto` usages
and a ratio of 3 `goto` usages to each `continue` usage. The C# compiler,
written itself in C#, clocks in at [297][roslyn] `goto` usages and 0.22 ratio.

People who take "goto is evil" as dogma will point out that each of these usages
could be rewritten as gotoless alternatives. And that's true, of course. But it
will come at a price: duplication of code, introduction of flags, several
`if` statements, and overall added complexity. These are highly reviewed
codebases written by talented people. When they use `goto`, it's because they
find it to be the simplest approach.

This is exactly how dogma hurts software development. We take a sensible rule
that works most of the time and promote it to sacred edict, deeming violators as
inferior programmers, producers of unclean code.  Thus something that would have
been a helpful guideline becomes a hard constraint.  Pile up enough of these,
and code that could have been simple ends up in a tangled mess, all in the name
of "purity."

We have a long tradition of dogmas, but `goto` is the seminal example, denounced
in Edsger Dijkstra's famous letter, [Go To Statement Considered Harmful]. Just
barely over a page, it's a good case study. The letter is good advice in the
vast majority of cases: misuse of `goto` will quickly land you in a maze of
twisty little passages, all alike.  Less helpful were the creation of a social
taboo (goto is the province of inferior programmers) and the absolutist calls
for abolition. Dijkstra himself came to regret how "others were making
a religion" out of his position, as quoted in Donald Knuth's more level-headed
paper, [Structured Programming with go to Statements].

Taboos tend to accrete over time. For example, overzealous object-oriented
design has produced a lot of lasagna code (too many layers) and a tendency
towards overly complex designs. Chasing semantic markup purity, we sometimes
resorted to hideous and even unreliable CSS hacks when much simpler solutions
were available in HTML. Now, with microservices, people sometimes break up
a trivial app into a hard-to-follow spiderweb of components. Again, these are
cases of people taking a valuable guideline for an end in itself.  Always keep
a hard-nosed pragmatic aim at the real goals: simplicity, clarity, generality.

When Linus Torvalds started the Linux kernel in 1991, the dogma was that
"monolithic" kernels were obsolete and that microkernels, a message-passing
alternative analogous to microservices, were the only way to build a new OS.
GNU had been working on microkernel designs since 1986. Torvalds, a pragmatist
if there was ever one, tossed out this orthodoxy to build Linux using the much
simpler monolithic design. Seems to have worked out.

Every programmer pays lip service to simplicity. But when push comes to shove,
most will readily give up simplicity to satisfy dogma. We should be willing to
break generic rules when the circumstances call for it.  Keep it simple.

[Go To Statement Considered Harmful]:http://sci-hub.tw/10.1145/362929.362947
[harmful-scihub]:https://sci-hub.hk/11.1145/362929.362947

[Structured Programming with go to Statements]: http://sci-hub.tw/10.1145/356635.356640

[kernel-goto]: https://grokbit.com/torvalds/linux/ref/master?keyword=goto
[kernel-ratio]: https://grokbit.com/_s/gduarte/goto-statement/linux
[clr-goto]: https://grokbit.com/dotnet/coreclr/ref/master?keyword=goto
[clr-ratio]: https://grokbit.com/_s/gduarte/goto-statement/clr
[git-goto]: https://grokbit.com/git/git/ref/master?keyword=goto
[git-ratio]: https://grokbit.com/_s/gduarte/goto-statement/git
[python-goto]: https://grokbit.com/python/cpython/ref/master?keyword=goto
[python-ratio]: https://grokbit.com/_s/gduarte/goto-statement/cpython
[redis-goto]: https://grokbit.com/antirez/redis/ref/unstable?keyword=goto
[redis-ratio]: https://grokbit.com/_s/gduarte/goto-statement/redis

[lucenenet]: https://grokbit.com/_s/gduarte/goto-statement/lucenenet
[roslyn]: https://grokbit.com/_s/gduarte/goto-statement/roslyn
