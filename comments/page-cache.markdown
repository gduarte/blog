---
layout: page
title: "Page cache comments"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---
**62 Responses to “Page Cache, the Affair Between Memory and Files”**

1.  jiayanwei on February 11th, 2009 1:48 am

    Just read the last article,another new one springs!:P\
     These postes are really informative,thanks Gustavo

2.  siddharth on February 11th, 2009 5:01 am

    Great article Gustavo.Just two doubts:

     1. Is mmap with shared mapping same as shared memory i.e set
     system of system calls like shmget,shmctl,shmat that we use to share
     and manage memory between different processes?

     2. Is anonymous mapping same as allocating memory through sbrk
     system or the malloc library call?

    My apologies if my queries sound too basic.

3.  penberg on February 11th, 2009 8:11 am

    An anonymous mapping is just a mapped region in memory that is not
    backed up by a file. As a matter of fact, I think most malloc()
    implementations use mmap() instead of sbrk() for expanding the heap.

    As for Linux, the shmget() system call sets up a swap-backed inode
    under the hood and the shmat() system call uses the same internal
    functions as the mmap() system call for setting up the mapping. So
    yes, they are the same things internally.

4.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 11th,
    2009 8:26 am

    Thank you for the feedback.

    It depends on the size of the allocation. Blocks below
    MMAP\_THRESHOLD, 128kb by default, go in the heap. Larger blocks
    become an anonymous memory mapped region, but then aren’t actually
    on the heap.

    Regarding the shared memory stuff, it’s as penberg describes, it’s
    basically a shared mapping of a temporary file. Windows uses the
    page file for it, Linux does tmpfs iirc. So the underlying mechanism
    is this one describe here.

5.  penberg on February 11th, 2009 8:33 am

    Gustavo, which allocator are you describing here? AFAIK, glibc
    malloc() does indeed use both but there are allocators out there,
    like the Lea allocator, which can be (and are) configured to just
    use mmap() on some operating systems.

6.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 11th,
    2009 8:35 am

    @penberg: that’s right, I was just talking about glibc malloc().

7.  [Software Quality Digest - 2009-02-11 | No bug left
    behind](http://nobugleftbehind.com/software-quality-digest-2009-02-11/)
    on February 11th, 2009 11:51 am

    [...] Page Cache, the Affair Between Memory and Files – Gustavo
    Duarte on the relationship between memory, files and I/O caching
    [...]

8.  michele alberti on February 12th, 2009 8:03 am

    Hi Gustavo,\
     great job as usual.\
     What about converting these articles in pdf for downloading?\
     thanks Gustavo for your work

9.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 12th,
    2009 9:05 am

    @Michelle: you’re welcome. Regarding the PDFs, yes, I’m thinking
    about a way to handle that. This has been coming up a ton (PDFs,
    ‘book’, etc). I’m thinking about a good way to integrate this into
    the site, while keeping the content free and easy to view online as
    well. So hang in there, but I hope to have something.

10. Guille on February 13th, 2009 10:31 am

    Is just another post to congrats you!!. the blog is awesome . i
    already read all of it.

    I’ll waiting the pdf
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)

    regards from argentina!.

11. Jean-Marc Saffroy on February 13th, 2009 6:04 pm

    Regarding allocators: glibc’s malloc() is actually implemented using
    Doug Lea’s allocator with a particular tuning and some
    modifications. The threshold for mmap-based allocation with glibc
    malloc() is tunable with mallopt(). BTW Doug Lea’s allocator code is
    highly versatile, it can accomodate a number of situations and OSes.
    And because glibc offers the propers hooks, you can even provide
    your own allocator, eg. based on dlmalloc (it’s a trick I used in my
    Driller experimental projet, to turn private malloc’ed memory into
    shared memory directly mmap-able by foreign processes).

12. Anthony on February 14th, 2009 3:56 am

    One question: if an app mmap’s a file for shared write access, how
    does the kernel know when the app has written and modified the data
    in the page cache? I’d guess it’s something like this: the page is
    always mapped read-only initially, so when the app writes to it, the
    kernel gets a pagefault. It can then mark the page as dirty, and
    remap the page as read-write until the page has been synced to disk.
    Sound about right?\
     Thanks!

13. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 14th,
    2009 9:43 pm

    @Jean: what’s the URL for your project?

    @Anthony: that’s a great question. I actually don’t remember the
    code path in the kernel that does that. The same question popped
    into my head as I was writing this post, but I didn’t get around to
    looking it up.

    Initially I thought about read-only PTEs exactly like you described.
    My guess though is that this is not done via a read-only PTE, but
    rather via the Dirty flag kept by the processor in the PTE. By
    relying on the dirty flag, the kernel can always check later whether
    the page has been written to without hurting performance via page
    faults. Especially because after the page is flushed to disk, the
    PTE would have to be reverted to read-only again, so a process that
    writes continuously would keep getting faults. That doesn’t sound
    right. This must be via the dirty flag in x86s.

    I’m actually snowboarding this weekend, but next week I’ll look into
    the kernel sources to figure this out. Unless you beat me to it – if
    you do, I’d love if you posted the links to the relevant sources
    here.

14. cnn on February 18th, 2009 12:55 am

    Really awesome.

    Would you please post some articles about the details about how the
    dll works for the os?

    When a dll is maped into separted processes such as A and B. The A
    and B will allocate its data section for this dll respectively while
    they will share the same text section (which may also be mapped into
    different virtual address for A and B accordingly).

    Suppose that the data sections’ address for A and B are different,
    how does the text section for the dll which is shared by A ang B
    work? Imaging that an instruction in the data section is trying to
    access a global variant of the dll. What’s linear address will the
    instruction use? We know that this global variant may have been
    mapped to different virtual address respectively for A and B. This
    question may be associative with the formation of elf and how the
    loader works?

    Expect your answer eagerly.

15. [Seemanta](http://seemanta.wordpress.com) on February 18th, 2009
    5:43 am

    Hi Gustavo,

    This blog is amazing! I am seriously amazed at your altruism in
    spending painstaking hours to draw such EXCELLENT diagrams, let
    alone the posts themselves. Thanks a ton for spending so much time
    in educating mortals like us
    ![:-)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    I now regret why I did not come across this blog earlier ! Keep up
    the good work! I have always wondered about how things work down at
    a system level but never knew where to start reading.

    And by the way, what do you think of the book by Robert Love on
    Linux Kernel programming? Is it better than the ‘dry’ UTLK book ?

    regards,\
     Seemanta

16. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 18th,
    2009 8:42 am

    Seemanta,

    Thanks!

    Regarding the books, the Love book is shorter at \~400 pages versus
    \~800 for UTLK. Roughly, you can say that:

    Love = concepts\
     UTLK = concepts + line-by-line descriptions of certain parts of the
    kernel code

    I think UTLK’s dry reputation comes from these code listings. If you
    only get one book, I’d say go for UTLK. It is a harder read, but
    it’ll give you a more solid understanding of what is going on (and
    you can always skip bits that don’t interest you – many functions I
    either didn’t care about or understood from the source code, so I’d
    skip the text). If you have the chance of having both books, I think
    the Love book is a useful companion/intro to the topics. Sometimes
    in UTLK it’s hard to see the forest for the trees because concepts
    are buried in such a large book and ample code listings. But I must
    say, I think UTLK is a monumental piece of work – the amount of
    effort those guys put into that book is fierce. I’m a UTLK fan
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

17. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 18th,
    2009 9:25 am

    @cnn: That sounds like a good topic – people have asked for this a
    few times. I’ll do some posts on it. Meanwhile, Nix has posted this
    link:

    [http://www.airs.com/blog/archives/category/programming/page/14/](http://www.airs.com/blog/archives/category/programming/page/14/)

    which looks like a great series on loading.

18. cnn on February 18th, 2009 6:08 pm

    Hi Gustavo,\
     Thanks for the quick response.\
     We are expecting yours on this topic which we think will be more
    illustrative with lots of amazing pictures.\
     Thanks.

19. Michael on February 21st, 2009 12:37 pm

    Hi, I discovered your blog few days ago, what a great thing to learn
    and understand.\
     I was wondering what sotfware do you use to draw the
    explaining-scheme ? Is it opensource or not ?

20. [Raam Dev](http://blog.raamdev.com) on February 22nd, 2009 9:57 pm

    @Michael: Gustavo wrote a post earlier explaining what software he
    uses for the diagrams:

    [http://duartes.org/gustavo/blog/post/quick-note-on-diagrams-and-the-blog](http://duartes.org/gustavo/blog/post/quick-note-on-diagrams-and-the-blog)

21. IvanM on February 24th, 2009 5:15 am

    Gustavo,\
     UTLK 3rd Edition is one of the books that every serious Linux
    developer MUST read.\
     Regards, Ivan

22. Michael on February 24th, 2009 3:13 pm

    Thanks for the answer Raam.

23. cnn on February 24th, 2009 6:24 pm

    IvanM,\
     Yes, we are totally agree with you that ULK is ONE of the books we
    MUST read. Then what are the others books?

24. Ben on February 24th, 2009 8:29 pm

    Gustavo, firstly, awesome posts.

    I don’t have UTLK, but I have been enjoying Love’s book (I am an
    electrical engineer) and your diagrams are \*exactly\* what is
    missing from his book; his descriptions are lucid, but your diagrams
    cement the descriptions into my mind.

    I bought Love’s book a few years ago and didn’t get too far into it
    when I felt the need to know more about the C programming, so I read
    through K&R, and then picked up a copy of Expert C Programming,
    which is still an awesome book. Once I understood C internals
    (runtime, text/data/bss) a little more, picking up Love was much
    easier.

    Please, keep referencing the original source materials you learn
    from. It’s always best to go to the source, such as the Intel
    manuals.

25. [Murmp - Page Cache, the Affair Between Memory and
    Files](http://www.murmp.com/permalink/566) on March 2nd, 2009 10:16
    pm

    [...] Page Cache, the Affair Between Memory and Files Currently 12/3
    Submitted February 02, 2009 by jsuggs Tags: programming! technology!
    Two serious problems must be solved by the OS when it comes to
    files. The first one is the mind-blowing slowness of hard drives,
    and disk seeks in particular, relative to memory. The second is the
    need to load file contents in physical memory once and share the
    contents among programs. If you use Process Explorer to poke at
    Windows processes, you’ll see there are \~15MB worth of common DLLs
    loaded in every process. My Windows box right now is running 100
    processes, so without sharing I’d be using up to \~1.5 GB of
    physical RAM just for common DLLs. No good. Likewise, nearly all
    Linux programs need ld.so and libc, plus other common libraries.
    [...]

26. Arvind on March 7th, 2009 11:01 am

    Hi Gustavo,

    I am enjoying reading your blog posts. Do you know of other blogs
    that write about low level hardware/software details. I see plenty
    of blogs on web development and social media but find none ( apart
    from yours ) dealing with “system software”, hardware and such
    stuff.

27. Zelito Ribas on March 8th, 2009 12:20 pm

    Hi Gustavo,

    just found your blog yesterday while googling for “memory layout”. I
    ended up reading a lot of other posts. My question to you is: Is
    there any kind o f bibliography you recommend, or you just learned
    all of this stuff searching the internet (and applying it at your
    work).

    Thanks a lot for sharing this knowledge and keep up the good work
    ![:D](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_biggrin.gif)

28. Zelito Ribas on March 8th, 2009 12:28 pm

    By the way,

    what does “ULTK” stands for? I’m planning on purchasing love’s book
    also.

29. [Gustavo Duarte](http://duartes.org/gustavo/blog) on March 23rd,
    2009 6:49 pm

    @Zelito: UTLK == Understanding the Linux Kernel, the O’Reilly book
    about the kernel.

    Regarding bibliography, I think the Linux kernel books I mentioned
    in the posts are the best ones I know of, plus the kernel source
    code. And of course the CompSci stuff underlying all this
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

30. [Gustavo Duarte](http://duartes.org/gustavo/blog) on March 23rd,
    2009 6:59 pm

    @Arvind: thanks!

    I like Mark Russinovich’s blog at
    [http://blogs.technet.com/markrussinovich/](http://blogs.technet.com/markrussinovich/),
    but it’s Windows only.

    Some of the InfoSec blogs cover low level stuff. Have you seen
    OpenRCE at
    [http://www.openrce.org/articles/](http://www.openrce.org/articles/)
    ?

    The Matasano Chargen blog has links to some systems type stuff with
    a slant towards security:
    [http://www.matasano.com/log/](http://www.matasano.com/log/)

    Also, search stack overflow for C or C++ related blogs:
    [http://stackoverflow.com/](http://stackoverflow.com/)

    The question has been asked there.

    Hope this helps!

31. Andrey on March 26th, 2009 2:59 pm

    Hi Gustavo,

    at the end of this article you say there’s gonna be another post
    about memory consumption figures. Are you planning to publish that
    article ?

    Thanks,\
     Andrey

32. [Gustavo Duarte](http://duartes.org/gustavo/blog) on March 26th,
    2009 5:30 pm

    @Andrey: yes, it’s coming out. I took a little detour and started to
    write my own blog / publishing engine to crank out these articles.
    I’m going to write about that as well.

    I should be able to write that post this weekend.

33. Ka-Hing Cheung on April 3rd, 2009 2:49 pm

    Recent glibc actually has a heuristic that raises the
    malloc-use-mmap threshold to the largest free.

    Sometimes I feel it’s too bad that there’s no way to for a user to
    tell the system “I use this file a lot, so please keep it in the
    page cache!”

34. roland on April 25th, 2009 9:30 am

    good work…go ahead with it

35. [Gustavo Duarte](http://duartes.org/gustavo/blog) on April 25th,
    2009 8:24 pm

    roland: thanks. Aye, I’m forging ahead.

36. Pavel on May 1st, 2009 6:41 pm

    Hi,\
     a little bit offtopic:\
     very interesting blog, trying to subscribe for it, but getting time
    out from
    [http://feeds.feedburner.com/GustavoDuarte](http://feeds.feedburner.com/GustavoDuarte)\
     If that something that you can fix – I would highly appreciate
    that.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)\
     Thanks!

37. [Gustavo Duarte](http://duartes.org/gustavo/blog) on May 3rd, 2009
    9:43 pm

    @Pavel: is that still happening for you? FeedBurner is pretty solid
    – is there any chance this is a firewall on your end? Have you tried
    this from a different computer or from within Google Reader or
    another aggregator?

38. Marco on May 6th, 2009 9:53 am

    Hi man,\
     very nice blog!

39. pr0gg3d on May 13th, 2009 6:40 am

    Great work! You should definitely write a book..
    ![:-)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

40. [Joel](http://www.hackerbliss.org) on June 18th, 2009 7:42 am

    Hi Gustavo,

    About the kernel not knowing that the page cache has been written to
    (and hence not being able to sync data to the disk),\
     Well writes happen through the write() set of system calls right?
    So the kernel writes to the page cache on behalf of the process, the
    process itself doesn’t write to its memory mapped vm area directly.
    So the kernel can sync to the contents of the page cache to disk
    when it has been written to. Also I think the kernel’s VFS maintains
    a linked list of dirty inodes in the super block structure of the
    mounted filesystem, which is periodically flushed to disk.

    Not sure if I’ve fully understood Anthony’s question so please
    correct me if I’m wrong. (:

    Thanks!\
     Joel

41. [Joel](http://www.hackerbliss.org) on June 18th, 2009 8:07 am

    I’m sorry, ofcourse mmap’ed files don’t use the read() / write()
    system calls.

    But as you said, the PTE might be marked as dirty by the processor
    once its written to the page. Are you sure this is how the kernel
    detects mmaped writes?

    Thanks,\
     Joel

42. sam on June 26th, 2009 12:48 am

    I’m wondering which tool you use to draw these beautiful graph?

43. kaleesh on November 1st, 2009 4:02 pm

    OMG Sir! Your explanations are most awesome! I am gonna dedicate a
    few days to poring over all your articles on Operating Systems
    ![:D](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_biggrin.gif)
    .

44. kaleesh on November 1st, 2009 4:02 pm

    @sam – looks line visio to me.

45. Shammi on November 1st, 2009 11:13 pm

    Hello Gustavo,

    I recently found these blog. It is very helpful for me to understand
    some basic things. I really appreciate your time for this.

    I have some basic doubts, which i think you can easily answer.

    1) If we have same shared libraries(eg: libc.so) loaded for more
    than 2 process. The shared library VM address in the two process
    will be identical or different ?, as far as i know, in physical
    memory they will be loaded only once.

    2) The entire VM address of a process is created during process
    creation, or the VM address is also created dynamically ?. eg: if i
    am creating a process p1(which uses lots of shared libraries), the
    whole VM address (if it uses a VM address space of 2GB) is allocated
    dynamically or statically during process creation.

    Can you please address my queries ?.

    Regards,\
     Shammi

46. [C](http://2600hertz.wordpress.com) on January 28th, 2010 3:25 am

    A truly amazing oasis in the world of technical blogs !!

    On a similar note check this article on GDB ( GNU Debugger) and
    seg-faults

    [http://2600hertz.wordpress.com/2010/01/14/hacking-into-any-executable-using-gdb/](http://2600hertz.wordpress.com/2010/01/14/hacking-into-any-executable-using-gdb/)

47. [Brutus Processus - Linux
    Attitude](http://linux-attitude.fr/post/brutus-processus) on April
    21st, 2010 10:04 am

    [...] page-cache-the-affair-between-memory-and-files [...]

48. jecko on May 21st, 2010 9:18 am

    Hey Gustavo,

    It’s been a while that you don’t post something new.\
     We’re waiting
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    …

    Ciao

49. Mike Ruzdvik on June 10th, 2010 3:41 pm

    Very interesting all your posts! Have learnt a lot so far just
    reading this.\
     What software do you use to make all the diagrams and pictures.
    They are really nice and fit very well

50. Karthick on June 25th, 2010 9:44 am

    Amazing article… I bet there could be very few in earth who could
    explain Memory Mapping and stuff better than this article does…!!

    Hats off!!

51. [gamoo entertainment » links for
    2010-10-26](http://gamoo.pe.kr/wordpress/?p=17) on October 26th,
    2010 4:18 pm

    [...] Page Cache, the Affair Between Memory and Files : Gustavo
    Duarte (tags: memory linux kernel) [...]

52. [文件与内存的桥梁：Page Cache «
    fleurer](http://www.fleurer-lee.com/2011/01/30/%e6%96%87%e4%bb%b6%e4%b8%8e%e5%86%85%e5%ad%98%e7%9a%84%e6%a1%a5%e6%a2%81%ef%bc%9apage-cache/)
    on January 30th, 2011 6:30 am

    [...] 作者：Gustavo Duarte 翻译：fleurer
    原文：[http://duartes.org/gustavo/blog/post/page-cache-the-affair-between-memory-and-files](http://duartes.org/gustavo/blog/post/page-cache-the-affair-between-memory-and-files "Linkification: http://duartes.org/gustavo/blog/post/page-cache-the-affair-between-memory-and-files")
    [...]

53. [文件与内存的桥梁：Page Cache |
    汤普金斯之路](http://sstompkins.wordpress.com/2011/04/17/%e6%96%87%e4%bb%b6%e4%b8%8e%e5%86%85%e5%ad%98%e7%9a%84%e6%a1%a5%e6%a2%81%ef%bc%9apage-cache/)
    on April 17th, 2011 8:08 pm

    [...] 作者：Gustavo Duarte 翻译：fleurer
    原文：[http://duartes.org/gustavo/blog/post/page-cache-the-affair-between-memory-and-files](http://duartes.org/gustavo/blog/post/page-cache-the-affair-between-memory-and-files "Linkification: http://duartes.org/gustavo/blog/post/page-cache-the-affair-between-memory-and-files")
    [...]

54. Chris on May 1st, 2011 9:55 pm

    It’s great

55. jokea on May 19th, 2011 6:33 pm

    Hi, I’m curious about the 2nd figure that there’s duplicated
    contents of\
     the same file scene.dat in page cache. Where did it come from?

    The file’s contents will be read into page cache when it doesn’t
    exist\
     before, and subsequent request on the same contents will know that
    it\
     already exists in page cache and hence no duplicate contents will
    be read\
     into page cache. Am I right?

56. jokea on May 19th, 2011 6:36 pm

    Please ignore my last comment. The figure says physical memory, not
    page cache.

57. jokea on May 19th, 2011 6:41 pm

    Is there any tool or command that can examine the contents in page
    cache?\
     Say output a list of files and its regions being cached in page
    cache, like:

    ==filename== ==offset== ==length==\
     scene.dat 0 12k\
     libc.so 0 128k\
     foo.txt 4096 4096

    Thanks.

58. [William Edwards](http://williamedwardscoder.tumblr.com) on February
    21st, 2012 5:10 am

    Tangentially related is my using the buffer; it was something I
    proposed for the Symbian OS but it never saw the light of day there;
    I used it first for a video editing application and I’ve used it in
    a few other apps since:

    [http://williamedwardscoder.tumblr.com/post/13363076806/buffcacher](http://williamedwardscoder.tumblr.com/post/13363076806/buffcacher)

59. [saurabh verma](http://saurabhverma.name) on August 27th, 2012 2:58
    pm

    I was sick of reading not-so-well-written and not-so-well-thought
    and not-so-well-analyzed blogs, Until I found out yours.

    You should write a book which should provide a mid path between
    Unix-advance-programming and Understanding Linux kernel. Most of the
    books I have read and reading do not provide a good bridge between
    both, A well thought practical book dealing with both user-space and
    deep kernel structure is what We want.

60. Ganesh on September 7th, 2012 9:34 am

    Very Good Sir. You rock!.

    Why don’t you write a book which explains all these concepts?

    Till now, I did not find a single book which explains as easily as
    you make people understand these Linux internal concepts.

    Hats off to you.

61. [Page Cache, the Affair Between Memory and Files |
    HillOS](http://www.hillos.org/2012/11/11/page-cache-the-affair-between-memory-and-files/)
    on November 11th, 2012 6:10 am

    [...] Page Cache, the Affair Between Memory and Files [...]

62. [Jarson's blog » 文件与内存的桥梁：Page
    Cache](http://jarson.asia/%e6%96%87%e4%bb%b6%e4%b8%8e%e5%86%85%e5%ad%98%e7%9a%84%e6%a1%a5%e6%a2%81%ef%bc%9apage-cache/)
    on February 26th, 2014 1:07 am

    [...] Duarte 翻译：fleurer
    原文：page-cache-the-affair-between-memory-and-files [...]



