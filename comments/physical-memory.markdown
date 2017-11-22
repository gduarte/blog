---
layout: page
title: "Comments"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---

**22 Responses to “Getting Physical With Memory”**

1.  Casey on January 16th, 2009 5:32 pm

    Sorry to nit-pick. On the first graphic, “4 Request Pins REQ[4:0]”
    looks like a typo to me.

2.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 16th,
    2009 11:46 pm

    @Casey: Don’t be sorry, I appreciate it. Fixed. Thanks!

3.  [JK](http://www.flashden.net/item/ping/22239?ref=JamK) on January
    16th, 2009 11:51 pm

    I wish your blog was around when I was at college. Very useful
    stuff.

4.  Santiago on January 17th, 2009 4:05 am

    I think the “Attribute Signals” table has another typo: Both values
    for the Write-protected and Write-back items are “110″. Cheers

5.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 17th,
    2009 12:10 pm

    @Santiago: Fixed, thanks for letting me know. The Write-back should
    have been 111. Have a great weekend.

6.  [McGrew Security Blog » Blog Archive » Gustavo Duarte’s Great
    Internals
    Series](http://www.mcgrewsecurity.com/2009/01/27/gustavo-duartes-great-internals-series/)
    on January 27th, 2009 3:23 pm

    [...] Getting Physical With Memory [...]

7.  [links for 2009-01-27 « Donghai
    Ma](http://donghaima.wordpress.com/2009/01/28/links-for-2009-01-27/)
    on January 27th, 2009 9:00 pm

    [...] Getting Physical With Memory : Gustavo Duarte (tags: memory
    hardware x86 internals computer) [...]

8.  Romeo on January 29th, 2009 12:17 pm

    Great post. Looking how ugly the Intel architecture is, it reminded
    me of a famous quotation of a computer scientist whose name I don’t
    remember now, that once said something like this: “Cache is not
    architecture. It is a performance hack”. Indeed. Cheers,

    Romeo

    P.S. Seu trabalho tem sido considerado muitíssimo educativo. Abraços
    de um conterrâneo.

9.  avaz on February 17th, 2009 1:29 am

    ..awesome blog, really useful stuff..hope you don’t mind me pinching
    some of your diagrams for my network engineering course
    ![;-)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)

    Cheers

10. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 18th,
    2009 8:55 am

    @avaz: That’s fine, I’m happy to hear about the stuff being used in
    courses. I only ask that you credit the blog (say, put the URL
    somewhere so people might reach it). Cheers.

11. [Ya-tou & me » Blog Archive » How The Kernel Manages Your
    Memory](http://jiang.eu.org/blog/?p=312) on February 19th, 2009 1:43
    am

    [...] as a large block called the physical address space. While
    memory operations on the bus are somewhat involved, we can ignore
    that here and assume that physical addresses range from zero to the
    top of available [...]

12. [How The Kernel Manages Your Memory « Motherboard
    Blog](http://motherboards.lastdepot.com/?p=10) on May 14th, 2009
    4:41 pm

    [...] as a large block called the physical address space. While
    memory operations on the bus are somewhat involved, we can ignore
    that here and assume that physical addresses range from zero to the
    top of available [...]

13. Khushal Singh Narooka on July 19th, 2009 9:14 pm

    Fantastic blog I ever found over web, well explained and
    exceptionally good diagrams.

    Regards\
     Khushal

14. avinash on July 22nd, 2009 3:59 am

    good job gustavo…… I am become fan of you
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

15. Samip on February 3rd, 2010 6:01 pm

    I had that “aagh” moment as I always wondered how “volatile” keyword
    does its function and description of this bus explains a lot of
    things. I assume kernel marks them as uncacheable and hence
    everything else is taken care by hardware…. Thank You for wonderful
    article…

16. [Brutus Processus - Linux
    Attitude](http://linux-attitude.fr/post/brutus-processus) on April
    21st, 2010 10:04 am

    [...] getting-physical-with-memory [...]

17. [women seeking women](http://www.isisandosiris.in/) on August 28th,
    2010 12:28 am

    I had that “aagh” moment as I always wondered how “volatile” keyword
    does its function and description of this bus explains a lot of
    things. I assume kernel marks them as uncacheable and hence
    everything else is taken care by hardware…. Thank You for wonderful
    article…

18. Tyler on March 21st, 2011 1:31 pm

    @Samip: Actually, I think the ‘volatile’ keyword doesn’t work that
    way. It just tells the compiler that the value can’t be cached in a
    registry. You can still run into subtle issues caused by having
    copies kept in multiple cache lines. The guy over at Ridiculous Fish
    has a good discussion about this:
    [http://ridiculousfish.com/blog/archives/2007/02/17/barrier/](http://ridiculousfish.com/blog/archives/2007/02/17/barrier/)

19. [How the Linux kernel manages your memory «
    DEEPAK.IO](http://deepak.io/?p=27) on May 6th, 2011 6:29 pm

    [...] as a large block called the physical address space. While
    memory operations on the bus are somewhat involved, we can ignore
    that here and assume that physical addresses range from zero to the
    top of available [...]

20. Isa on June 27th, 2011 10:27 pm

    Hi Gustavo,\
     I’ve been following all the articles you have written about OS. So
    far they’ve been great reference for me since I am now studying
    Linux. I am 4th grade CS student. It would be great if you can write
    a little about how device driver work in Linux too, since I heard
    the best way to start learning Linux kernel is thru it’s device
    drivers. Thank you very much.

21. [Never too late » 虚拟内存，地址空间，page
    cache](http://www.leonstudio.org/?p=643) on January 2nd, 2013 11:24
    am

    [...] Getting Physical With Memory [...]

22. [Ash](http://N/A) on October 1st, 2013 2:07 pm

    You should seriously consider writing more articles like this
    Gustavo. I find your whole series on memory and kernel very
    insightful. Please continue writing posts like this!

    Thanks,\
     Ash


