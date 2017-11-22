---
layout: page
title: "Comments"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---
**54 Responses to “Memory Translation and Segmentation”**

1.  Chuck on August 12th, 2008 7:03 am

    For what it’s worth, I’m really enjoying your articles. Please
    continue to write
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

2.  [Mahesh](http://hitechstartups.wordpress.com) on August 12th, 2008
    9:40 pm

    I liked the explanation, very well articulated.

3.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on August 13th,
    2008 12:34 am

    @Chuck: it’s worth a lot
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)
    I enjoy writing these posts, I write them for fun but the fact that
    people seem to like them is definitely encouraging too.

    I’m cooking up the next one here… I’m actually in Hawaii this week,
    I’ve been waking up at \~6am to snorkel and dive, sleeping early,
    but this evening I’m writing a bit of the protection stuff
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    @Mahesh: thanks!

4.  Arvind on August 13th, 2008 2:35 am

    Nice article!! I have subscribed to your blog feed and everytime I
    check for new items your blog is the first I look for unread
    items..Elated that I found one today..Good read..

5.  [Ben fowler](http://bjf-codebrown.blogspot.com) on August 13th, 2008
    4:53 pm

    I thoroughly enjoyed this well-written article as well as your
    others. It’s interesting, but challenging material for a lot of
    people, and I know it’d otherwise take a LOT of reading around to
    get the information elsewhere.

    You have a knack for this Gustavo! Have you considered teaching, or
    at least turning this material into a book? Keep up the great work!

6.  notmuch on August 15th, 2008 9:08 am

    Nicely done. For long I have been pondering upon how to visualize
    the workings of hardware. From CPU clock cycle and instructions,
    interrupt mechanism and interaction with software, and memory. These
    articles are a good step in that direction. Thanks much.

7.  JinxterX on August 17th, 2008 10:48 am

    You write great articles, thanks, any chance of doing one on Linux
    and MTRRs?

8.  Hormiga Jones on August 19th, 2008 9:22 am

    Your series of articles are HIGHLY informative and well written. I
    have forwarded them onto several of my work colleagues. Thank you
    for this valuable resource and keep up the good work.

9.  [CPU Rings, Privilege, and Protection : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/cpu-rings-privilege-and-protection)
    on August 20th, 2008 12:39 am

    [...] let’s see exactly how the CPU keeps track of the current
    privilege level, which involves the segment selectors from the
    previous post. Here they [...]

10. [Gustavo Duarte](http://duartes.org/gustavo/blog) on August 20th,
    2008 12:51 am

    Thank you all for the feedback!

    I was in Hawaii last week, hence the belated reply. I did crank out
    the protection stuff in the flight back to Denver though
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    @Ben: You know, I started the blog just as a way to write random
    stuff. I never expected to get hits hehe. So now I have thought
    about some of the stuff you mentioned, especially books.

    The trouble with books is that the stuff ends up locked and
    inaccessible to people, plus you lose things like being able to link
    to the source code directly (or linking in general).

    I also thought about doing a print-friendly CSS or maybe render some
    stuff as PDF to let people download. That might be a good way to go.

    Teaching would be fun... I love teaching people who are interested in
    learning. hehe. I don’t plan ahead too much, so I guess I’ll see
    where it goes. Thanks for the encouraging words.

    @JinxterX: yea, that sounds cool. I thought about writing about
    cache lines and how memory access happens “for real”, and talking
    about MTRRs would make a lot of sense. I’ll write it down here. I
    think after this last series though I’ll do a hiatus on CPU
    internals type of stuff, because I didn’t want the blog to be just
    about that. But I’ve added MTRRs to the !ideas.txt here
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

11. Peter Teoh on September 19th, 2008 3:19 am

    Thank you for the article. I am playing with the memory in Linux
    Kernel now. When I touch/modify things like PTE, PDE etc do I need
    to be in preemption disabled mode? And whenever I modify these, is
    flushing of TLB needed? Will it lead to crash if not? I am always
    getting crashes doing all these, so not sure what causes the
    crashes?

12. [Mario](http://www.mariod.net) on September 23rd, 2008 7:27 pm

    Hey guy,

    These are some of the best-written architecture articles I have came
    across. I started teaching myself x86 assembly awhile back and
    realized I was getting nowhere without really understanding memory
    management and how the CPU operates. Your articles are filling in a
    lot of gaps for me and I truly do appreciate it.

    -Mario

13. Nikhil on December 11th, 2008 7:43 am

    Hi Gustavo,\
     like everyone already has said…highly informative, well
    articulated, best written literature about x86 on the internet. In
    my pursuit of trying to understand segments, descriptors, selectors
    this is serving the purpose wonderfully.

    again i cannot help but echo other people’s thoughts when i suggest
    you should write a book.\
     Thanks a lot.

14. [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 12th,
    2008 12:56 am

    @Peter: sorry for not replying in time. Unfortunately it’s hard for
    me to keep up with the comments sometimes, though I’m trying to do a
    better job. I’ll email you to see if your doubts are still current.

    @Mario, @Nikhil: wow, thanks a LOT for the kind words
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    That’s really encouraging. I had no idea I was any good at this
    stuff until I started blogging, but the fact that my stuff works at
    least for some of you is really cool. I get a huge kick out of
    teaching stuff, especially computing since I like it a lot. So,
    thanks again – hearing stuff like this makes me want to post more
    for sure.

    Regarding the book, I have thought about it. The trouble is that I
    wouldn’t want to lock the content away. I want it to be freely
    accessible. But I also thought about maybe assembling the stuff and
    making an online book.

    I would love to do something like that. Time is the problem, as
    usual hehe.

15. [el\_bot](http://www.eltita.com.ar) on December 28th, 2008 9:15 am

    Hi Gustavo. I have a doubt. Are you sure that gdtr store a linear
    address? Is not it a physical address? If paging is disabled it
    should be physical; but if paging is enabled, well, I don’t know. If
    it is linear then you can get a fault page when accesing to the GDT;
    something (I think) problematic in this stage (you can have 2 page
    faults in only one memory access!).

    Good blog and happy new year.

16. [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 29th,
    2008 12:55 am

    @el\_bot: thanks, and happy new year to you as well!
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    I’m sure about the GDTR. Here is the relevant bit from Section 2.4.1
    in the Intel System Programming Guide 3A:

    “The GDTR register holds the base address (32 bits in protected
    mode; 64 bits in IA-32e mode) and the 16-bit table limit for the
    GDT. The base address specifies the linear address of byte 0 of the
    GDT; the table limit specifies the number of bytes in the table.”

    The CR3 register though (also called PDBR) which points to the page
    directory does hold a physical address. Also, see section 8.8,
    Software Initialization for Protected Mode Operation. It covers some
    of the initializations that must be done.

    My post on the kernel boot up also might help at
    [http://duartes.org/gustavo/blog/post/kernel-boot-process](http://duartes.org/gustavo/blog/post/kernel-boot-process)

    Cheers!

17. [el\_bot](http://www.eltita.com.ar) on December 30th, 2008 8:58 am

    Thanks for the specific references. When I have a bit of free time I
    will read theses.\
     Ok, your are (again) right. But in the case the CPU running in
    protected mode 32bit with paging disabled, you would need storing a
    physical address in GDTR (ok, you can say “it’s anyway a linear
    adress, but in this case is like if you are using (fictitious) page
    tables performing a identity mapping; i.e; X (linear)-\> X
    (physical) ). In any case, before switch to mode 32bit protected
    with paging disabled, you must store in the GTDR the physical
    address of the GTD. It’s a assumption, but I will try check it in
    the linux kernel code
    ([http://lxr.linux.no/linux+v2.6.25.6/arch/x86/boot/pm.c\#L115](http://lxr.linux.no/linux+v2.6.25.6/arch/x86/boot/pm.c#L115)
    ? I think it is done in the line ‘asm volatile(“lgdtl %0″ : : “m”
    (gdt)); ‘ but my understanding about assembler embeded in C is very
    poor… My “theory” is “gdt.ptr store, in this point, the physical
    adress of the array boot\_gdt” ).\
     Yes, CR3 MUST store a physical address (btw, it happen in any
    architecture supporting paging; the pointer to the table page must
    be a physical pointer). If it not, well… that’s don’t work.

    And yes, I read your great article about booting-up; actually I am
    basing in it for my asummption(s)!

    Saludos, and thanks for your replies.\
     P.S : Again, my English surely is not correct (I make my best
    effort…). Please, if you believe necessary, correct my words.
    English readers and I will are grateful with you
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

18. [Anatomy of a Program in Memory : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory)
    on January 27th, 2009 9:28 am

    [...] on. Keep in mind these segments are simply a range of memory
    addresses and have nothing to do with Intel-style segments. Anyway,
    here is the standard segment layout in a Linux [...]

19. [McGrew Security Blog » Blog Archive » Gustavo Duarte’s Great
    Internals
    Series](http://www.mcgrewsecurity.com/2009/01/27/gustavo-duartes-great-internals-series/)
    on January 27th, 2009 3:23 pm

    [...] Memory Translation and Segmentation [...]

20. [Quick Note on Diagrams and the Blog : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/quick-note-on-diagrams-and-the-blog)
    on January 28th, 2009 6:21 pm

    [...] colors hold from the earliest post about memory to the latest.
    This convention is why the post about Intel CPU caches shows a blue
    [...]

21. travis on February 6th, 2009 3:08 am

    Great posts…

    I went to where the gdt\_page is instantiated
    ([http://lxr.linux.no/linux+v2.6.25.6/arch/x86/kernel/cpu/common.c\#L24](http://lxr.linux.no/linux+v2.6.25.6/arch/x86/kernel/cpu/common.c#L24))

    It has the following code:

    [GDT\_ENTRY\_DEFAULT\_USER\_CS] = { { { 0x0000ffff, 0x00cffa00 } } }

    Do you know what that means?

22. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 6th,
    2009 11:35 pm

    @travis:

    This line is building the 8-byte segment descriptor for the user
    code segment. To really follow it, there are 3 things you must bear
    in mind:

    ​1. The x86 is [little
    endian](http://en.wikipedia.org/wiki/Endianess), meaning that for
    multi-byte data types (say, 32-bit or 64-bit integers), the
    significance of bytes grows with memory address. If you declare a
    32-bit integer as 0xdeadbeef, then it would be laid out in memory
    like this (in hex, assuming memory addresses are growing to the
    right):

    ef be ad de\
     lower =\> higher

    ​2. In array declarations, or in this case a struct declaration,
    earlier elements go into lower memory addresses.

    ​3. The convention for Intel diagrams is to draw things with HIGHER
    memory addresses on the LEFT and on TOP. This is a bit counter
    intuitive, but I followed it to be consistent with Intel docs.

    When you put this all together, the declaration above will translate
    into the following bytes in memory, using Intel’s ‘reversed’
    notation:

    (higher)

    00 cf fa 00\
     00 00 ff ff

    (lower)

    If you compare these values against the segment descriptor diagram
    above, you’ll see that: the ‘base’ fields are all zero, so the
    segment starts at 0×00000000, the limit is 0xfffff so the limit
    covers 4GB, byte 47-40 is
    [11111010](http://www.google.com/search?q=0xfa%20in%20binary), so
    the DPL is 3 for ring 3.

    If you look into the Intel docs, they describe the fields I left
    grayed out. Hope this helps!

23. travis on February 7th, 2009 1:27 am

    Awesome! Thanks for the very clear explanation.

    Do you know of a Linux forum that is open to these type of detailed
    questions? Sometimes it’s very difficult to find answers using
    google, and “Understanding the Linux Kernel” doesn’t cover some of
    the things that confuse me.

24. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 7th,
    2009 9:57 am

    @travis: I don’t ;( There used to be a ‘kernel janitors’ project to
    get people to do simple patches for the kernel, and a ‘kernel
    newbies’ to try to teach kernel basics. But I’m not sure where they
    are. I don’t use forums much, so there might be something good out
    there. If you find anything, I’d like to hear about it.

    I also thought about installing some forum software on my server so
    people could talk about this stuff. However, I’m afraid of spending
    gobs of time there. I’m pretty strict about not getting into stuff
    that takes too much time, which is why I don’t touch Twitter : P

25. [Ya-tou & me » Blog Archive » CPU Rings, Privilege, and
    Protection](http://jiang.eu.org/blog/?p=316) on February 19th, 2009
    1:46 am

    [...] let’s see exactly how the CPU keeps track of the current
    privilege level, which involves the segment selectors from the
    previous post. Here they [...]

26. Raúl on April 12th, 2009 9:06 pm

    Gustavo, I don’t know how to thank you. Your articles are beautiful
    and very well explained. Please continue writing. Why don’t you
    write a book?. You are one of the best teachers I’ve ever found. You
    save me hours trying to find information and hard-studying.
    Sincerily, thank you very much.

27. [Gustavo Duarte](http://duartes.org/gustavo/blog) on April 14th,
    2009 1:44 pm

    @Raul: wow, thank you very much for your comment. It’s great to hear
    from people who have learned from or have been helped by this
    material. It’s the best incentive.

    Regarding the book, stay tuned
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

28. [内存剖析 « Rock2012’s
    Blog](http://rock2012.wordpress.com/2009/05/03/%e5%86%85%e5%ad%98%e5%89%96%e6%9e%90/)
    on May 3rd, 2009 4:26 am

    [...] on. Keep in mind these segments are simply a range of memory
    addresses and have nothing to do with Intel-style segments. Anyway,
    here is the standard segment layout in a Linux [...]

29. [Joel](http://www.hackerbliss.org) on May 11th, 2009 6:47 am

    Thanks for such a beautiful article, articulated way beyond
    expression. I hope you write a book some day.

    One of the things that confused me though was: Your gdt had ‘limit’
    but you hadn’t mentioned that there was a granularity flag that
    multiplied it by 4k when set. Later on you go on to mention that in
    modern kernels flat model, each descriptor describes a segment of
    upto 4GB in size (32 bits) but the gdt ‘limit’ being only 20 bits
    made me wonder how.
    ![:-)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    Thanks

30. Rahul on July 13th, 2009 1:49 pm

    Hi Gustavo,

    In terms of making technical concepts clear, your posts are the best
    I have seen.

    One question, can you please explain as to what purpose is served by
    the LDT ? Does any real OS ever really uses the LDT.

    Thanks\
     Rahul

31. Krish on August 4th, 2009 1:46 pm

    Hi Gustavo,

    Let me begin by thanking you for a wonderful article.

    In your article (the diagram for “Protected mode segmentation”), the
    logical address is the same as the linear address because the base
    is 0 in a flat model.

    My understanding is that the linear address is used to decode the
    physical address of the page directory table and the page table
    thereafter to finally get the physical page value containing the
    segment.

    There is a good chance that another process might also generate the
    same logical address; and with the base 0, will generate the same
    linear address. Does this mean that it will eventually point to the
    same page table entry?

    Who decides which page table is assigned to which process segment?
    How is the segment selector value assigned (populated in the segment
    registers) to the process?

    Thanking you in anticipation.

    Krishnan.

32. Darshan on February 1st, 2010 11:37 pm

    Hi Gustavo,

    Thank you for giving such a informative article. I learnt many
    concepts from this.. thank you brother!!

    Darshan.

33. Jon on February 19th, 2010 5:06 pm

    Thanks for these articles, I feel I have come a bit late to the
    party, having only just found them, and the few I have read do far
    have been the clearest of anything I have read!

    Just one thought though, I see you mentionerd that you had thought
    of a forum?

    Perhaps you are right, that it might take up too much time, but I
    feel that there might be a better format than a blog, now that there
    is so much content.

    I dunno what form would be best however =)

    I want to read all of them, but would really appreciate a way of
    jumping between them, to re-read/cross reference and quickly find a
    specific topic.

    But saying that you seem to have a talent of comunicating these
    tough subjects clearly and with a good deal of humour (needed with
    the “dryness” of the subject matter!) pls pls pls keep them coming.

    jon

34. saurin on July 22nd, 2010 12:43 pm

    Very good explanation. Thanks\
     Saurin

35. Ishan on October 1st, 2010 4:44 am

    Can you explain the difference between logical address and virtual
    address?\
     Thanks

36. [卧龙腾飞 »
    程序在内存中运行的奥秘(转)](http://www.wltf.net/%e7%b3%bb%e7%bb%9f%e9%9b%86%e6%88%90/314.html)
    on January 20th, 2011 11:16 pm

    [...]
    图中蓝色区域表示虚拟地址中映射到物理内存的部分，白色区域则是未映射。在这个例子中，Firefox惊人的内存需求让它使用的虚拟地址远远超过了其自身的地址空间。内存地址空间是由诸如堆、栈等段式内存管理方式进行管理的。需要指出的是，这里段的概念只不过是表示了一段内存地址，它和Intel段表机制（Intel-style
    segments）没有任何关系。总的来说，我们在这里讨论的是Linux系统进程标准的段式内存管理方法。
    [...]

37. Josue on March 24th, 2011 10:15 pm

    Man your blog is awesome, I just read few post and I am amazed. I
    will take my time everthing I can

38. [程序在内存中运行的奥秘 | Brianguo1980's
    Blog](http://brianguo1980.wordpress.com/2011/04/18/%e7%a8%8b%e5%ba%8f%e5%9c%a8%e5%86%85%e5%ad%98%e4%b8%ad%e8%bf%90%e8%a1%8c%e7%9a%84%e5%a5%a5%e7%a7%98/)
    on April 17th, 2011 6:33 pm

    [...]
    图中蓝色区域表示虚拟地址中映射到物理内存的部分，白色区域则是未映射。在这个例子中，Firefox惊人的内存需求让它使用的虚拟地址远远超过了其自身的地址空间。内存地址空间是由诸如堆、栈等段式内存管理方式进行管理的。需要指出的是，这里段的概念只不过是表示了一段内存地址，它和Intel段表机制（Intel-style
    segments）没有任何关系。总的来说，我们在这里讨论的是Linux系统进程标准的段式内存管理方法。
    [...]

39. [程序在内存中运行的奥秘 | ZhangXiaona's
    Blog](http://www.zhangxiaona.net/2011/04/11/%e7%a8%8b%e5%ba%8f%e5%9c%a8%e5%86%85%e5%ad%98%e4%b8%ad%e8%bf%90%e8%a1%8c%e7%9a%84%e5%a5%a5%e7%a7%98/)
    on September 3rd, 2011 4:12 am

    [...]
    图中蓝色区域表示虚拟地址中映射到物理内存的部分，白色区域则是未映射。在这个例子中，Firefox惊人的内存需求让它使用的虚拟地址远远超过了其自身的地址空间。内存地址空间是由诸如堆、栈等段式内存管理方式进行管理的。需要指出的是，这里段的概念只不过是表示了一段内存地址，它和Intel段表机制（Intel-style
    segments）没有任何关系。总的来说，我们在这里讨论的是Linux系统进程标准的段式内存管理方法。
    [...]

40. Abu on September 27th, 2011 3:55 am

    Hi,\
     Thanks for the article.

    When you say “(by shifting it 16 bits to the left, which is
    equivalent to multiplying by 2\^16)”, don’t you mean 16? As in the
    diagram.\
     Also, in the diagram, it helps if you say “segment \* 0×10 +
    offset”, as “\* 16″ can be confusing, I was literally multiplying by
    0×16 rather than 0×10 (16 in base 10).

    Kind regards.

41. Rajiv on September 28th, 2011 6:43 am

    Hi,

    I got stuck in setting the base & limit for stack protection.\
     Can you explain the idea of Expand down stack segment please? I
    dont get enough information from Intel’s System Programming Guide
    1.\
     I want to use expand down stack from address 0xffff,0000 to
    0xfffe,0000 ( 64KB) in kernel mode. G (Granularity flag) bit is set
    to 1 for 4KB increments.\
     D/B is 1, making operation size as 32 bit pointer.\
     What should be the value of Segment Descriptor for Stack segment
    with above required information? Is it related with Real & Protected
    mode?

    ——————— Code snippet ————————————-\
     void Init\_MicroKernel(){ // entry function for kernel\
     gdt\_install(); // 1st line in this function

    }\
     void setkgdt(uint32 index, uint16 low, uint8 mid, uint8 high,
    uint16 limit, uint8 access, uint8 gran) {\
     kgdt[index].seglimit = limit;\
     kgdt[index].lowbase = low;\
     kgdt[index].midbase = mid;\
     kgdt[index].access = access;\
     kgdt[index].granularity = gran;\
     kgdt[index].highbase = high;\
     }

    void gdt\_install() {\
     desc gdtp;\
     setkgdt(0, 0, 0, 0, 0, 0, 0);\
     setkgdt(1, 0, 0, 0, 0xFFFF, 0x9B, 0xCF); // code at 0×8\
     setkgdt(2, 0, 0, 0, 0xFFFF, 0×93, 0xCF); // data\
     setkgdt(3, 0×0, 0xFF, 0xFF, 0xFFFD, 0×97, 0xCF); // stack\
     setkgdt(4, 0, 0, 0, 0, 0, 0);

    gdtp.limit = (sizeof (gdt\_entry) \* MAX\_GDT\_ENTRIES) – 1;\
     gdtp.base = (uint32)kgdt;\
     InstallGdt((uint32)&gdtp);\
     }\
     InstallGdt:\
     mov 4(%esp), %eax\
     lgdt (%eax)\
     mov \$DATA\_SEL, %ax /\* DATA\_SEL equals =0×10 \*/\
     mov %ax, %ds\
     mov %ax, %ss\
     mov %ax, %es\
     mov %ax, %fs\
     mov %ax, %gs\
     .byte 0xEA\
     .long done\
     .word CODE\_SEL /\* CODE\_SEL equals =0×8 \*/\
     done:\
     ret

    —————————————————————————–\
     Please reply soon…..

    Thanks

42. [Arnaud](http://electronique.aop.free.fr) on September 29th, 2011
    1:04 am

    Very nice topic !

    One of the best ever about memory
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    But, juste a question : what we call “Linear adress” here, is it the
    adress we call “virtual address” in this article :
    [http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory](http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory)
    ?

    Thanks.

43. shashank on October 14th, 2011 8:32 am

    Very well written !

44. [Kevin McCaughey](http://www.kevinmccaughey.org) on April 7th, 2012
    1:09 pm

    Gustav,

    You are a giant among men. What a pleasant surprise it was to find
    your articles, which are the best I have ever seen on the subject,
    and you are also replying in detail.

    You are doing a great service for people who want to learn but can’t
    spend hundreds of pounds on the books plus a couple of years reading
    them. Plus you have a real knack of explaining stuff.

    Thank you
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    Kevin

45. Anurag Kalia on May 9th, 2012 3:48 am

    Haha! I love the funny quotes every now and then. That appendix
    thing really cracked me up.

    But yeah. These posts are really informative. They are basic yet
    detailed. I cannot specify how I was yearning for such a doc. Keep
    it up! I look forward to read more.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

46. Anurag Kalia on May 9th, 2012 10:02 am

    Or not? I realized this site is dormant for ages. \*Heart breaks and
    shatters in a million pieces\*

47. [Gustavo Duarte](http://duartes.org/gustavo/blog) on May 9th, 2012
    10:53 am

    @Anurag: Hang in there. It’s indeed dormant, but it’s not dead. New
    stuff is coming.

48. nikhil on May 27th, 2012 10:55 am

    hello sir ! that was the great explanation. Very well organized\
     i am NEW to linux kernel. few things i am confused about\
     1. Who generates segment descriptors ?\
     2. what decides whether code should run in ring 0 or 3, is it
    linker/loader/compiler ? means who sets cpl/dpl?\
     3. Is it possible that user program could run with 0 privilege any
    way(like compiling/linking/loading with privilege 0 and can access
    i/o memory without kernel interpretation ?\
     thanks for great posts…

49. vindhya G. on July 15th, 2012 1:21 am

    Hi Sir,

    I could not understand where is selectors stored?i.e if the cpu has
    to change from user mode to kernel mode how selector corresponding
    to the kernel descriptor is brought into code segment registers?

50. vikas on September 3rd, 2012 1:32 pm

    Very nice explanation
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

51. clynamen on September 29th, 2012 5:53 am

    I just found my favorite blog. Great articles!

52. treft on August 9th, 2013 8:46 am

    When looking at the Linux GDT, notice the holes inserted on purpose
    to align data with CPU cache lines – an artifact of the von Neumann
    bottleneck that has become a plague.Please explain this.

53. derpi on September 29th, 2013 8:58 pm

    Really great article, very well written. I have some questions
    though, hope someone can answer these questions:

    ​1) the translation process in the segmentation unit, how severe is
    the performance loss. As far as i understood the hardware, even on
    newer 64 bit systems, still forces you to make that address
    translation process, even if you use paging.

    ​2) Quote in the last paragraph: “But even in flat mode segments are
    still crucial for x86 protection, the mechanism that defends the
    kernel from user-mode processes and every process from each other.”
    But is paging not doing that? I always thought the protection is
    managed in the pagetable information.

    Need to look it up more deeply, but step after step
    ![:D](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_biggrin.gif)

    Thanks again for this nice article. Really helpful!

54. [x86 memory segmentation |
    EmbeddedInn](http://embeddedinn.wordpress.com/2013/10/25/x86-memory-segmentation/)
    on October 25th, 2013 12:19 am

    [...]
    [http://duartes.org/gustavo/blog/post/memory-translation-and-segmentation](http://duartes.org/gustavo/blog/post/memory-translation-and-segmentation)
    [...]
