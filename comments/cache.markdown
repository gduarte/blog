---
layout: page
title: "Comments"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---

**26 Responses to “Cache: a place for concealment and safekeeping”**

1.  Peter on January 12th, 2009 4:21 am

    Very nice I love all your “Internals” posts, one simple question,
    what do you use to make the schemas?

    Thank you.

2.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 12th,
    2009 9:10 am

    Peter: I’m using Visio 2007. I use ‘themes’, which is a nice way to
    apply common fills and lines to the shapes (like rounding,
    gradients, that kind of thing). The font is Consolas 10 pt. Cheers.

3.  [Dave](http://www.findinglisp.com/blog/) on January 14th, 2009 2:44
    pm

    You might also point out that in addition to fully-associated and
    set-associative, caches can also be direct-mapped. Direct mapping
    just uses the low bits of the address to select the \*exact\*
    location the data could possibly be (essentially a single set). It’s
    very simple and fast, but only one line can map to a given index, so
    you can have issues where cache lines fight each other to be kept in
    cache. This can create big problems when doing things like data
    copies from one region of memory to another where the distance
    between the copies is a multiple of the cache size.

    In reality, set-associative caches are the mid-way point between
    fully-associative and direct-mapped. They try to gain some of the
    benefits of full associativity while managing the
    complexity/power/performance.

    Nice description, though.

4.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 14th,
    2009 3:01 pm

    @Dave: thanks!

5.  [links for 2009-01-27 « Donghai
    Ma](http://donghaima.wordpress.com/2009/01/28/links-for-2009-01-27/)
    on January 27th, 2009 9:00 pm

    [...] Cache: a place for concealment and safekeeping : Gustavo
    Duarte (tags: reference programming hardware architecture
    optimization memory cache cpu processor intel) [...]

6.  [Anatomy of a Program in Memory : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory)
    on February 4th, 2009 10:29 pm

    [...] deterministic. Also, the constant reuse of stack regions tends
    to keep active stack memory in the cpu caches, speeding up access.
    Each thread in a process gets its own [...]

7.  [Ya-tou & me » Blog Archive » Anatomy of a Program in
    Memory](http://jiang.eu.org/blog/?p=314) on February 19th, 2009 1:44
    am

    [...] deterministic. Also, the constant reuse of stack regions tends
    to keep active stack memory in the cpu caches, speeding up access.
    Each thread in a process gets its own [...]

8.  [Ya-tou & me » Blog Archive » Cache: a place for concealment and
    safekeeping](http://jiang.eu.org/blog/?p=324) on February 19th, 2009
    2:33 am

    [...] Dave brought up direct-mapped caches in a comment below.
    They’re basically a special case of set-associative caches that have
    only one way. In the [...]

9.  maverick on April 29th, 2009 12:12 pm

    Great Post… nicely written. I used to hear that we should write code
    to utilize the cache’s effectively ? I know using arrays we could
    achieve good locality. Could you please provide some insight on how
    we code affects the I-cache and how our datastructures could use
    D-cache effectively.

10. [内存剖析 « Rock2012’s
    Blog](http://rock2012.wordpress.com/2009/05/03/%e5%86%85%e5%ad%98%e5%89%96%e6%9e%90/)
    on May 3rd, 2009 4:22 am

    [...] deterministic. Also, the constant reuse of stack regions tends
    to keep active stack memory in the cpu caches, speeding up access.
    Each thread in a process gets its own [...]

11. [Gustavo Duarte](http://duartes.org/gustavo/blog) on May 3rd, 2009
    9:45 pm

    @maverick: Check Ulrich Drepper’s paper, “What Every Programmer
    Should Know About Memory”. It’s the best concise resource on this
    that I know of.

12. [Cache: a place for concealment and safekeeping « My
    Site!](http://motherboards.lastdepot.com/?p=4) on May 14th, 2009
    4:40 pm

    [...] Dave brought up direct-mapped caches in a comment below.
    They’re basically a special case of set-associative caches that have
    only one way. In the [...]

13. [Anatomy of a Program in Memory « My
    Site!](http://motherboards.lastdepot.com/?p=8) on May 14th, 2009
    4:41 pm

    [...] deterministic. Also, the constant reuse of stack regions tends
    to keep active stack memory in the cpu caches, speeding up access.
    Each thread in a process gets its own [...]

14. Chris on March 11th, 2010 5:34 pm

    Great informative post. I clarified many things which weren’t as
    clearly explained in other sources I read.

    I do have one small thing I couldn’t understand related to virtual
    indexing:\
     “Because the L1 way is never bigger than an MMU page, a given
    physical memory location is guaranteed to be associated with the
    same set even with virtual indexing.”

    First of all, I’m not quite sure what the MMU page is. As far as I
    know, the MMU is what “magically” takes care of the virtual to
    physical address translation, using the page table and its “cache” –
    the TLB.\
     So, why would the bits 11-6 in the virtual address be ok to use for
    indexing instead of bits 11-6 in the physical address. Could you
    please clarify this for me ?

    Thanks and keep up the good work !

15. [Be nice to your cache |
    .mischief.mayhem.soap.](http://msinilo.pl/blog/?p=614) on April
    25th, 2010 4:21 pm

    [...] about cache architecture itself, it’s a topic on its own. If
    you’re interested see Gustavo’s article or this paper by Ulrich
    Drepper. In a nutshell – cache is a very fast memory organized in
    lines [...]

16. [[转]程序内存地址分布 |
    流氓兔斯基](http://www.tu321.com/index.php/2010/06/%e8%bd%ac%e7%a8%8b%e5%ba%8f%e5%86%85%e5%ad%98%e5%9c%b0%e5%9d%80%e5%88%86%e5%b8%83/)
    on June 20th, 2010 6:39 am

    [...]
    进程地址空间的首段地址便是栈，它储存了局部变量以及大多数编程语言的函数参数。当调用方法或者函数时，会有一个新的元素进栈。一旦函数返回了值，那么该元素就会被销毁。这种简单的设计，很有可能是考虑到数据操作都符合后进先出（LIFO
    ）规则，这意味着访问栈的内容并不需要复杂的数据结构，一个简单的栈顶指针就能搞定一切。进栈和出栈的操作方便快捷，不需要过多判断。另外，栈的反复使用能够使栈主流在CPU缓存（cpu
    caches）中，从而加快数据存取。每个进程中的每个线程都有属于自己的栈。
    [...]

17. Narendra on September 21st, 2010 10:14 pm

    Terrific Gustavo Duarte , no words to say .

    You have done a excellent job .

    Keep it up.

    Many thanks\
     Narendra

18. [www.BenStopford.com » Blog Archive » Interesting Articles Feb
    2011](http://www.benstopford.com/2011/02/20/interesting-articles-feb-2011/)
    on February 20th, 2011 2:55 am

    [...] Good overview of caching:
    [http://duartes.org/gustavo/blog/post/intel-cpu-caches](http://duartes.org/gustavo/blog/post/intel-cpu-caches)
    [...]

19. Reyaz Ahmed on March 23rd, 2011 4:26 pm

    Splendid way of explaining things. I must say that your blog on
    x86/AMD64 and related technology is one of the best someone can
    read. Thanks.\
     Reyaz A.

20. [程序在内存中运行的奥秘 | ZhangXiaona's
    Blog](http://www.zhangxiaona.net/2011/04/11/%e7%a8%8b%e5%ba%8f%e5%9c%a8%e5%86%85%e5%ad%98%e4%b8%ad%e8%bf%90%e8%a1%8c%e7%9a%84%e5%a5%a5%e7%a7%98/)
    on September 3rd, 2011 4:10 am

    [...]
    进程地址空间的首段地址便是栈，它储存了局部变量以及大多数编程语言的函数参数。当调用方法或者函数时，会有一个新的元素进栈。一旦函数返回了值，那么该元素就会被销毁。这种简单的设计，很有可能是考虑到数据操作都符合后进先出（LIFO ）规则，这意味着访问栈的内容并不需要复杂的数据结构，一个简单的栈顶指针就能搞定一切。进栈和出栈的操作方便快捷，不需要过多判断。另外，栈的反复使用能够使栈驻留在CPU缓存（cpu
    caches）中，从而加快数据存取。每个进程中的每个线程都有属于自己的栈。
    [...]

21. john on March 28th, 2012 8:06 am

    can you discuss about the 2-way set associative cache to 8-way set
    associative cache?

    thank you!

22. Jeroen van Bemmel on June 7th, 2012 2:44 pm

    Your blog triggered some thoughts about OS design issues related to
    caching. In my hobby OS I create “Thread” objects of size 4K (i.e.
    exactly one page), which contains some fields that are accessed each
    scheduling quantum. One of these fields is the SSE state information
    (512 bytes) which must be aligned by 512 bytes (or an exception
    occurs)

    The above design would allow at most 8 concurrent active threads
    before cache trashing kicks in. This can be increased to 64 by
    allocating the SSE state memory outside of the Thread structure
    (i.e. varying its offset by 512 instead of 4K), and adding a cache
    optimization delta of n\*64 bytes to vary the offsets of the fields

23. [不要虐待你的cache « Babylon
    Garden](http://www.luluathena.com/?p=58) on January 11th, 2013 7:32
    pm

    [...] Gustavo’s article 或 this paper by Ulrich [...]

24. [Anatomy of a Program in Memory « Xilong Pei's BLOG /
    裴喜龙的博客](http://xilongpei.elastos.org/2013/03/27/anatomy-of-a-program-in-memory/)
    on March 26th, 2013 7:29 pm

    [...] deterministic. Also, the constant reuse of stack regions tends
    to keep active stack memory in the cpu caches, speeding up access.
    Each thread in a process gets its own [...]

25. [CPU cache |
    memorysimulator](http://memorysimulator.wordpress.com/2013/12/21/cpu-cache/)
    on December 21st, 2013 4:42 am

    [...]
    [http://duartes.org/gustavo/blog/post/intel-cpu-caches](http://duartes.org/gustavo/blog/post/intel-cpu-caches)
    [...]

26. [Jarson's blog » Best of : Gustavo
    Duarte](http://www.jarson.asia/best-of-gustavo-duarte/) on February
    24th, 2014 8:05 pm

    [...] motherboard-chipsets-memory-map how-computers-boot-up
    kernel-boot-process anatomy-of-a-program-in-memory
    how-the-kernel-manages-your-memory
    page-cache-the-affair-between-memory-and-files
    getting-physical-with-memory cpu-rings-privilege-and-protection
    Caches: a place for concealment and safekeeping [...]
