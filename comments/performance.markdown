---
layout: page
title: "Comments"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---

**10 Responses to “Performance is a Science”**

1.  Anonymous on December 18th, 2008 1:37 pm

    Your own source, the indubitable wikipedia, says “more massive” in
    the description of Aristotle’s error. Mass is not equivalent to
    weight, as two minutes with a dictionary might tell you.

2.  [Sterling Camden](http://chipsquips.com) on December 18th, 2008 1:40
    pm

    Very true indeed. I remember learning this lesson back in 1984. We
    were looking at upgrading the version of the language we were using,
    and the upgrade was a fairly radical redesign of the language’s
    internals. So we did a lot of benchmarking. We tested every
    operation we could think of, and they all came out faster in the new
    version. So we converted about 800 clients (all at once — another
    mistake) and their systems started crawling.

    We hadn’t taken into account a change they made to memory management
    that, in a **large, real world application** caused almost constant
    thrashing.

    That’s when I learned that you must test the performance of the
    entire system under real conditions. Contrived benchmarks may be
    good for finding out *where* performance breaks down, but not *if*.

3.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 18th,
    2008 3:17 pm

    @Anonymous:

    A clear distinction between mass and weight in the West came only
    with Newton’s Principia, about 2,000 years after Aristotle had died.
    Galileo himself did not have a clear concept of mass. See “Concepts
    of Mass in Contemporary Physics and Philosophy”.

    The word “massive” does not appear a single time in Aristotle’s
    Physics (eg, see
    [http://etext.library.adelaide.edu.au/a/aristotle/physics/complete.html](http://etext.library.adelaide.edu.au/a/aristotle/physics/complete.html))
    or in the Heavens (eg, see
    [http://classics.mit.edu/Aristotle/heavens.3.iii.html](http://classics.mit.edu/Aristotle/heavens.3.iii.html)).

    Aristotle uses “light” and “heavy” repeatedly in his discussion, not
    “massive”. But given that the concept of mass is nowhere near
    developed in the works, your point is moot, \_even\_ if the word
    were in the books.

    @Sterling: welcome back. That’s a good story – nothing beats
    examples from the trenches. I liked the school bus prank
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

4.  Samuli on December 23rd, 2008 5:08 am

    Because of the complexity of any real world system, I feel that the
    optimizations made in the code should focus on the computational
    complexity of the algorithms used. There the gain and pain can be
    “reasoned”.

5.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 23rd,
    2008 9:36 am

    @Samuli: great point.

    I was focusing on hardware aspects of performance, and ignoring the
    mathematical aspects.

    The opposite of what I describe here is real as well: people
    tweaking the trees of routine-level performance and missing the
    forest of algorithmic complexity. It’s foolish to ignore theory.

    It takes both. Cheers.

6.  [Alex Railean](http://railean.net/) on December 24th, 2008 3:59 am

    I think you should also mention *powertop*, it can be used to
    measure the impact of your changes on power consumption. In fact,
    there are several popular cases that most people have heard of – a
    blinking cursor in a text editor, and an “idle time measurer” in an
    instant messenger.

    This is especially important for laptops, but we shouldn’t neglect
    this on desktops either.

    If someone can recommend a similar utility for Windows, please do
    so.

7.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 29th,
    2008 1:23 am

    @Alex: that’s a great point. I’m going to write a post on this,
    optimizing for power. I don’t know of a Windows powertop, added to
    the research queue.

8.  [Software Quality Digest – 2009-02-04 | No bug left
    behind](http://nobugleftbehind.com/software-quality-digest-2009-02-04/)
    on February 4th, 2009 12:48 pm

    [...] Performance is a Science – Gustavo Duarte on performance
    factors and why measuring your code is a must [...]

9.  Jean-Marc on February 5th, 2009 5:41 pm

    This blog post is just too true, every bit of it. I know, I worked
    on performance tuning of rather complex systems such as large
    clusters of file servers, it was a lot of fun.

    One particular performance problem I investigated back then comes
    back to my mind: we had results while running a rather simple
    filesystem benchmark that our customer had written for acceptance
    tests on a big computing cluster. This was on a parallel filesystem,
    meaning many clients accessed files on a set of servers provinding a
    single unified namespace. We knew this benchmark well, it was very
    simple, and we had previously used it for acceptance of another
    bigger cluster. We had good experience with the filesystem software
    as well: a complex piece of software, but well written, with lots of
    statistics and useful tuning knobs to play with. Some of the
    hardware in this cluster was new to us, especially the interconnect
    (ie. the high speed network), so we looked into that as much as we
    could (and we could not much, really). To make things harder, we
    could not reproduce the problem in our labs, it would only show up
    with a large number of nodes (about 100 I think).

    So where was the problem? Actually in a number of places:\
     – the parallel benchmark used a rather unefficient communication
    scheme to gather its statistics (a really tiny amount of data, but
    sent all at once to a single node)\
     – the communication libraries for this new type of interconnect had
    some parameters ill-suited for a big cluster, especially with the
    scheme used in the benchmark\
     – the interconnect hardware reacted in very strange ways in this
    particular case: it would flood some nodes on the network with
    low-level error messages\
     – this flood led to higher-level protocol errors that caused
    connection disruptions for the filesystem software

    Now the funny thing is, the hardware had absolutely no counter for
    this kind of error, it was invisible to software, so we could only
    have spotted this behaviour with some expensive logic analyzer (of
    course we never got a budget for this). So how did we solve it?
    Through many tests, a lot of sweat, and mail exchanges with one
    expert for this interconnect who eventually guessed (after asking
    several questions of course) what was going on. Halleluja.

    It took us over two months of investigation to find the root cause,
    and the solution was immediate (set a parameter in the communication
    libs). But if we had had useful error counters, I bet the problem
    would have been solved in a week or two at most.

    So my conclusion is: statistics and error counters are vital to
    debugging and performance analysis.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    But too few pieces of software (or hardware) are built with field
    problem analysis in mind… That’s why in this job you still need a
    top-notch crystal ball (some call that “experience”).

10. [Charlie](http://taichiplay.blogspot.com) on December 1st, 2011 2:50
    pm

    Excellent article! Reminds me of “Don’t believe what your teacher
    tells you just because he is your teacher.” – Buddha\
     By which he meant, check things out for yourself. Do an empirical
    test to see if it works.


