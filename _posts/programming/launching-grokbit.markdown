---
layout: post
title: "Grokbit"
date: 2016-06-21 11:30:00 -0700
comments: true
categories:
- [programming]
---

TLDR: I launched [Grokbit], a code search and browsing tool.

When I was programming as a kid, I longed for a *hardcore codebase*, like
a compiler or operating system, to *really* understand computers. That stuff
just sounded so magical, some kind of Elvish secret way beyond mortals.  There
were decent books explaining how things worked, but that's a poor substitute for
code.

Then the Internet reached Brazil when I was about 14, and all of a sudden there
was this "GNU C" compiler that was allegedly better than Microsoft's, and the
code was *completely open!* And what's more, there was an open Unix you could
run on your 386! No need to convince your parents to sell the car and buy
a SPARCstation!

This was the best present any kid could hope for. This is why, despite a lot of
issues in the tech community, my gratitude to these people is overwhelming. You
might think Stallman is a lunatic, and you might be right, but damn - he's the
geek black-bearded Santa who brought the source to the children.

Now, reading this code was hard. The kernel, in particular, is tough to follow
because entry points and flow of execution are unclear. There was no tmux,
I didn't know Vim, my regexes were weak. So I printed out a whole bunch of code
in my parent's dot matrix printer, and spread it on the floor. A poor man's
multi-pane Vim session. Here's an interrupt handler, there's a "bottom half",
and hey, look!, the syscall is right over there by the socks.

I think reading code is second only to writing code in making you a better
programmer. When I write stuff like [Anatomy of a program in memory][anatomy] or
[What does an idle CPU do?][idle-cpu], a big part of the kick is sharing what
I think are beautiful designs with people who haven't seen them before.

Still, I always wished I could give readers a better interface to actually dive
into the code. But our tools for handling an entire code base, especially in the
browser, are just not good enough at the moment. Searching also needs a lot of
improvement: I think we can do better than regexes and general full-text
searching when it comes to searching code.

That's why I built [Grokbit]. It has an indexing and search engine that's
entirely tailored to code, so you can search semantically, like "give me the
definition of foo" or "search for an identifier named bar". It's also wicked
fast: you get real-time suggestions even in the largest repos I could try.

But searching was only half the battle. Having a rich UI - especially
a multi-pane one, was an absolute requirement for me. When you have function
A calling B calling C, it can be *enormously* helpful to have the 3 of them in
the screen at once, and navigate seamlessly. Plus being able to load multiple
large files, having back/forward in the browser work well, and an overall
smooth UX.

So that's what I went for with Grokbit.  It's still crude, lots of low hanging
fruit, but it has already been very useful, as you'll be able to tell in future
blog posts. But before I put more weekends into it, I'd like some feedback. Try
it out, let me know what could be better, or which search features I should
build sooner (many easy wins here). I hope it's as fun to use as it was to
build.

Finally, if you are interested in working on the project, reach out. I don't
know if this will become a SaaS app, or a feature in another product, or an open
source project, but I am hellbent on solving this problem. Let's carry the ring
into Mordor.

[Grokbit]: http://grokbit.com
[anatomy]: /post/anatomy-of-a-program-in-memory/
[idle-cpu]: /post/what-does-an-idle-cpu-do/
