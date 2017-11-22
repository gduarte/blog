---
layout: page
title: "Comments for Anatomy of a Program in Memory"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---

**189 Responses to “Anatomy of a Program in Memory”**

1.  JP on January 27th, 2009 12:53 am

    Thank you!

    Your posts are some of the most informative I’ve ever found on the
    internet.

    I’m just researching this subject right now and your timing couldn’t
    have been better!

    Thanks!

2.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 27th,
    2009 12:55 am

    @JP: sweet, glad it came at a good time. You’re welcome!

3.  michele alberti on January 27th, 2009 1:13 am

    First of all: great job! Your written are very good!\
     I have a question. I’m studying some code and I need documentation
    on Linux internals, specifically on memory management about
    processes. Can you suggest me any books or other documentation?

    Thanks!

4.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 27th,
    2009 1:22 am

    @michele: Take a look at the end of [this
    post](http://duartes.org/gustavo/blog/post/kernel-boot-process). It
    has a list of Linux kernel books.

    My favorite book is still “Understanding the Linux Kernel” because
    it explains \_everything\_ in painstaking detail. It is dry, but the
    authors put monumental effort into going through everything.

    The Intel manuals are free and also excellent.

    These books are the best resource I know of. I hope to write more
    material for this blog and eventually maybe have a short ‘Intro to
    the Linux Kernel’ document online. However this is subject to my
    work schedule and so on.

5.  michele alberti on January 27th, 2009 1:32 am

    @Gustavo:

    thanks very much.\
     The project I’m studying needs to understand/manage memory stuff,
    like /proc//maps. I’ll read the doc you suggest me and keep reading
    your blog
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)

    thanks!

6.  [frgtn](http://www.frgtn.net) on January 27th, 2009 5:01 am

    Thanks for a great post once again. I’ve been reading your blog for
    a while now and found a lot of your other posts really informative
    and easy to read. Big + goes for the diagrams, they help clarify on
    a lot of points. Keep up the good work!

7.  [web development](http://www.webdigi.co.uk) on January 27th, 2009
    6:24 am

    Great article!

    Quite shocked to know that windows takes double the kernel memory
    compared to Linux.

8.  [numerodix](http://www.matusiak.eu/numerodix/blog) on January 27th,
    2009 6:39 am

    Excellent writeup!

    I’m wondering, though, why does the kernel space consume 1gb? That
    seems like a lot..

    And if you don’t mind divulging a trade secret, what do you use to
    draw your diagrams?

9.  Reader1 on January 27th, 2009 6:45 am

    Great post. You left some stuff out though. In modern linux/windows
    OS’s the heap base is also randomized. And in Linux string literals
    such as char \*blah = “hello there”; will be stored in an ELF
    section called .rodata. Rarely is constant data such as strings held
    in .text, but it does happen. Good post though, I like the graphics.

10. gatechman on January 27th, 2009 6:56 am

    Great Post!

11. [Programming links | GreenwaysRoad
    Blog](http://www.greenwaysroad.com/blogs/vasuBlog/index.php/2009/01/27/programming-links/)
    on January 27th, 2009 7:06 am

    [...] Anatomy of a program in memory [...]

12. [Jose V.](http://www.joseavillalta.blogspot.com) on January 27th,
    2009 7:12 am

    Gustavo:

    Excellent article, I’ve been looking for a post like this for a long
    time. By the way, this made it to the front page of reddit, so brace
    for incoming traffic.

    J.V.

13. [el\_bot](http://www.eltita.com.ar) on January 27th, 2009 8:05 am

    Good post!\
     Only for completeness, can you include the program’s parameters? I
    think they go in the bottom of the stack, but I’m not sure. In any
    case, of course, they are put by the kernel when a execXX in called.

    Saludos

14. raja on January 27th, 2009 8:20 am

    thank you.\
     very informative and refreshing.\
     looking forward to the next post

15. [Daily Links \#18 |
    CloudKnow](http://www.cloudknow.com/2009/01/daily-links-18/) on
    January 27th, 2009 9:16 am

    [...] Anatomy of a Program in Memory [...]

16. [Sushant Srivastava](http://softer-copy.blogspot.com) on January
    27th, 2009 9:38 am

    Thank you for this wonderful post.

17. [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 27th,
    2009 9:40 am

    Thank you all for the feedback!

    @web dev: The kernel is not really using that much memory physical
    though, it simply has that virtual range available to itself to map
    whatever physical memory it wishes. Thanks for the question though –
    I clarified this in the post.

    Both the Linux and Windows kernel are extremely well built. It’s
    hard to find areas where one really has an edge, imho. Two
    outstanding pieces of software.

    @numerodix: You know, this ‘tightness’ of the address space is a
    sort of recent phenomenon. When the kernels were designed, 2 or 3GB
    seemed like a lot
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    So partially it’s an evolutionary artifact, one that is fixed by
    64-bit address spaces.

    But also, it is good for performance to give the kernel an ample
    window into memory. I think the next couple posts should clarify why
    this is.

    @Reader1: thanks for the corrections. I’ll add the heap
    randomization to the post. Regarding ELF sections, I thought about
    them, but I’m always balancing what to include in these blog posts.
    I try hard to keep it crisp, covering one area well, but without
    dumbing anything down. But there’s so much interconnected stuff,
    it’s not always clear where to put the line. I think I’m going to
    leave ELF sections out for now though.

    @Jose: thanks for the heads up
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    @el\_bot: This is one similar to ELF sections above. The tradeoff
    between conciseness and completeness. I’m planning a post covering
    the stack in detail, and talking about buffer overflows, and I think
    that’d go in well there.

18. Carlos on January 27th, 2009 10:24 am

    Thanks for the post, it is very informative. Can you tell me what
    software do you use to create graphics?

19. [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 27th,
    2009 10:25 am

    I use Visio 2007 for the diagrams. Cheers.

20. [Chaitanya Gupta](http://chaitanyagupta.com/) on January 27th, 2009
    10:33 am

    As everyone has said, great post. I am looking forward to your
    follow up posts. Thanks.

21. emit on January 27th, 2009 11:09 am

    I love your diagrams w/ the subtle gradients. What did you use to
    create them?

22. emit on January 27th, 2009 11:10 am

    oops I didn’t see \#19 reply. ok so it was visio
    ![:D](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_biggrin.gif)

23. NoName on January 27th, 2009 12:25 pm

    This blog includes very interesting articles. Continue your good
    work and never give up!

24. [tek](http://tek.org.uk) on January 27th, 2009 2:00 pm

    Excellent and informative post
    ![:-)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

25. vs on January 27th, 2009 2:42 pm

    I’ve been reading your posts for a while now, but I just wanted to
    take a moment to actually write a comment thanking you. These are
    some really informative posts you write. You should consider writing
    a book on the “internals” of systems level software.

26. David on January 27th, 2009 4:35 pm

    Nice post. Very clear. I’ll keep reading you.

27. [dev](http://dev-interview-questions.blogspot.com) on January 27th,
    2009 4:51 pm

    Nice Post. Well written and concise. Looked at your Physical with
    memory post and its good too.

28. John on January 27th, 2009 6:33 pm

    You mentioned, “Each thread in a process gets its own stack.”, but I
    thought in linux, a thread is really just another process that
    happens to share certain things with other processes. Could you
    clear up my confusion?

29. [links for 2009-01-27 at DeStructUred
    Blog](http://www.joselise.com/wp/2009/01/28/links-for-2009-01-27/)
    on January 27th, 2009 7:05 pm

    [...] Anatomy of a Program in Memory : Gustavo Duarte (tags: windows
    reading linux programming kernel management memory) [...]

30. Sesh on January 27th, 2009 9:52 pm

    I will try to thank you in a simple way: for a long time doubts
    about where string literals stay in memory would linger in my mind
    but so far I was not able to find any easy explanation anywhere.
    This post makes it clear now.

    Thank you very much. Can’t wait for the next articles in this
    series.

31. [Gustavo Duarte on the Anatomy of a Program in
    Memory](http://blog.raamdev.com/2009/01/27/gustavo-duarte-on-the-anatomy-of-a-program-in-memory)
    on January 27th, 2009 10:13 pm

    [...] his latest post, Anatomy of a Program in Memory, Gustavo
    Duarte explains beautifully the way in which programs are laid out
    in memory. He explains [...]

32. [Raam Dev](http://blog.raamdev.com) on January 27th, 2009 10:19 pm

    I just finished an Introduction to C Programming class and this
    beautifully written post is a godsend for helping me further my
    understanding of memory management.

    Thank you so much!

33. [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 28th,
    2009 12:20 am

    First off, thank you all for the feedback!

    It is great to hear that the post helped out a little bit.
    Contributing to the community is one of the major reasons I write
    this stuff, though it doesn’t hurt that it’s fun.

    @vs: the idea of a book does surface in the comment threads from
    time to time. I see a few issues though: 1) I want to keep the
    content free, no matter what; 2) the color would be gone in a normal
    book; 3) the links would be gone.

    Lately I’ve been thinking about maybe collecting all the stuff once
    there’s enough, and having an online book of sorts. Then maybe make
    color prints for a small fee if people wanted hard copies (I
    wouldn’t mind making money on these).

    I really had no idea where this blog would go, though now it’s
    becoming a bit clearer. So yea, I’m munching on it.

    @John: you are correct. Basically the set of threads in a thread
    group share all the memory regions except for the stack and
    thread-local-storage. Within the kernel, threads are represented
    with the same data structure used for processes, task\_struct, so
    again you are correct.

    Does this help clear it up? I could dig up the relevant links to
    kernel code if you’d like to see the stuff in action. Let me know.

34. [links for 2009-01-28 «
    boblog](http://oviron.wordpress.com/2009/01/28/links-for-2009-01-28/)
    on January 28th, 2009 3:03 am

    [...] Anatomy of a Program in Memory Memory management is the heart
    of operating systems; it is crucial for both programming and system
    administration. In the next few posts I’ll cover memory with an eye
    towards practical aspects, but without shying away from internals.
    While the concepts are generic, examples are mostly from Linux and
    Windows on 32-bit x86. This first post describes how programs are
    laid out in memory. (tags: windows reference programming hardware)
    [...]

35. kgas on January 28th, 2009 7:11 am

    Right away I am book marking your site for further reading. Nice
    articles. This will be much helpful to newbie and those who wants to
    learn about computers and students. Keep it up!

36. John on January 28th, 2009 7:27 am

    @Gustavo, thank you so much. All is clear. I used to have a book on
    the linux kernel where the code was also annotated, but I
    unfortunately just don’t have the time, so your excellent posts and
    articles are greatly appreciated!

37. [Ulver](http://localhost.localdomain.cl) on January 28th, 2009 7:30
    am

    Interesting arcticle, Very didactly and with figures!! xD … well
    being a litle bit serious, i think that is very clear and simply to
    explain the concepts, follow in this way !

    pd: for more linux kernel understading, in “viewly” way it will be
    use kernel profiling, aka “/proc/profile & kerneltop ” very useful
    to see internal functions and the corresponding behavior of that.

    cheers !

38. [Chanux](http://chanux.wordpress.com/) on January 28th, 2009 7:54 am

    Great post. I want learn the art of writing great articles like
    this. I was looking for a point to get in to kernel level stuff.
    There won’t be any better source than this.

    Subscribed to RSS. ( Looking for Twitter
    ![:D](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_biggrin.gif)
    )

39. [Fab](http://fabiensanglard.net) on January 28th, 2009 9:39 am

    Great article !

    Drawing are neat ! What soft do you use for them ?

40. [Ben Fowler](http://bjf-codebrown.blogspot.com) on January 28th,
    2009 3:39 pm

    Once again, great article! I think this blog is one of the best
    website I’ve seen on introductory OS internals I’ve seen yet.
    Anything beyond that, I need to start reading my copy of Hennessey
    and Patterson
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    I thought I’d spotted a typo in one of the diagrams, but no — it
    turns out you’ve really shown attention to detail in these articles.
    Nice work.

41. [Quick Note on Diagrams and the Blog : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/quick-note-on-diagrams-and-the-blog)
    on January 28th, 2009 6:25 pm

    [...] colors hold from the earliest post about memory to the latest.
    This convention is why the post about Intel CPU caches shows a blue
    index for the virtually [...]

42. [gsempe](http://www.twitter.com/gsempe) on January 29th, 2009 6:13
    am

    Very clear, informative, nice post.\
     Good job.

43. JP on January 29th, 2009 7:49 pm

    If you decide to do a small online book with such great content on
    all aspects of OS management, I will gladly buy it!

44. ken on January 30th, 2009 7:46 pm

    wow thats informative,got lost a bit into it but have bookmarked to
    come back to.good work

45. vlad on February 1st, 2009 9:52 pm

    Great article – Thanks for the effort of keeping things simple and
    informative!

46. satmeet on February 1st, 2009 10:17 pm

    BOOKMARKED..!!\
     awaiting your next posts…!!\
     Thanks…

47. IvanM on February 2nd, 2009 2:46 am

    Very clear explanation of memories either phyisical or virtual\
     Thanky you again!

48. Prabhu on February 2nd, 2009 6:03 am

    Hi Gustavo,

    The explanation was very clear and informative. Thanks.\
     One rquest. If you could explain in the same lucid way how a
    program wriiten in high level language , say C, gets compiled , what
    are symbols, how shared files gets linked , how addresses are
    determined when loaded into memor and such nitty gritty details, it
    would be great!

49. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 2nd,
    2009 8:40 am

    Thank you all for the feedback.

    @Prabhu: that’s a great topic. There’s a good book about this called
    [Linkers and
    Loaders](http://www.amazon.com/Linkers-Kaufmann-Software-Engineering-Programming/dp/1558604960/).
    It’s from 2000, not sure how much has changed since. I’m going to
    add this to my write queue, though I have no idea when the post
    would actually come out
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

50. bekars on February 3rd, 2009 12:29 am

    Great works, Thank you

51. [How The Kernel Manages Your Memory : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory)
    on February 3rd, 2009 11:36 pm

    [...] examining the virtual address layout of a process, we turn to
    the kernel and its mechanisms for managing user memory. Here is
    gonzo [...]

52. Asmita on February 4th, 2009 12:31 am

    It’s a great post … Very helpfull. I’m really waiting for the next
    one as I’m not too clear for Heap system. Keep writing. Thanks a lot
    for sharing these helpfull contents.

53. [Software Quality Digest – 2009-02-04 | No bug left
    behind](http://nobugleftbehind.com/software-quality-digest-2009-02-04/)
    on February 4th, 2009 12:49 pm

    [...] Anatomy of a Program in Memory – In-depth article by Gustavo
    Duarte about how a program is represented in memory [...]

54. Nix on February 5th, 2009 7:01 am

    Another excellent series on linkers is Ian Lance Taylor’s 20-article
    series starting near the bottom of and proceeding onwards for
    several pages.

55. Nix on February 5th, 2009 7:01 am

    Oh, curses. Fixed
    [link](http://www.airs.com/blog/archives/category/programming/page/14/)
    to the linkers series start…

56. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 5th,
    2009 9:25 am

    @Nix: great link, thanks!

57. [How The Kernel Manages Your Memory |
    www.pwnage.ro](http://www.pwnage.ro/2009/02/05/how-the-kernel-manages-your-memory/)
    on February 5th, 2009 12:46 pm

    [...] Anatomy of a Program in Memory VN:F [1.0.9\_379]please
    wait…Rating: 0.0/10 (0 votes cast) [...]

58. Raminder on February 7th, 2009 10:47 am

    Hi Gustavo, thank you for all your excellent articles.\
     I have a question, two actually. As you’ve said each thread has its
    own stack area. How are these stack areas located with respect to
    each other? e.g if there are two threads in a process T1 & T2 where
    would their stacks start and end in the memory. The second question
    is similar. Does each thread has two stacks – one for user mode and
    one for kernel mode?

59. macosx on February 8th, 2009 10:34 pm

    Great jobs.keep going on and publishing more articles

60. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 10th,
    2009 12:54 am

    @Raminder: you’re welcome! Sorry for the delay in an answer here,
    but I’ve been swamped with work these past few days. Can you drop me
    an email so that I can let you know when I’ve replied here?

61. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 13th,
    2009 12:21 am

    @Raminder: Sorry for the delay, I’ve been working a bit lately. Per
    our email, I’ll talk about Windows only.

    I don’t know where in the virtual space the thread stacks go. I
    googled briefly but didn’t see an answer, so I think the easiest
    thing to do is to write a short test program to spawn a few threads
    calling a function that prints the address of a local variable. If
    you do a loop of 10 or so the pattern should become clear. I found
    two relevant posts;

    [http://blogs.msdn.com/oldnewthing/archive/2005/07/29/444912.aspx](http://blogs.msdn.com/oldnewthing/archive/2005/07/29/444912.aspx)\

    [http://software.intel.com/en-us/articles/adjusting-thread-stack-address-to-improve-performance-on-intel-xeonr-processors/](http://software.intel.com/en-us/articles/adjusting-thread-stack-address-to-improve-performance-on-intel-xeonr-processors/)

    Regarding the second question, YES, threads have two stacks: a large
    one for user mode (1MB by default it looks like) and a tiny one for
    kernel mode (just a few kilobytes, 12k for x86). The kernel stack is
    kept in kernel-mode data structures and can’t be touched from user
    mode.

    Hope this helps.

62. Jakcy on February 17th, 2009 11:36 pm

    I am from China. Although my English is not so good, but I like your
    articles. I am ready to reading all your articles on your blog.\
     Greate Job And Execllent Articles\~\~\~

63. [Ya-tou & me » Blog Archive » How The Kernel Manages Your
    Memory](http://jiang.eu.org/blog/?p=312) on February 19th, 2009 1:43
    am

    [...] examining the virtual address layout of a process, we turn to
    the kernel and its mechanisms for managing user memory. Here is
    gonzo [...]

64. [La anatomía de un programa en memoria « Mbpfernand0’s
    Blog](http://mbpfernand0.wordpress.com/2009/02/26/la-anatomia-de-un-programa-en-memoria/)
    on February 26th, 2009 9:38 am

    [...] todo caso, interesante documento en Anatomy of a Program in
    Memory que describe la gestión de memoria alrededor de un [...]

65. Alex on March 8th, 2009 6:36 pm

    Great post. Congratulations! Some questions, so what I understood is
    that a process can not “use” more than 3gb in a default running
    linux system, since 1gb is reserved for the kernel, is this true or
    not? I remember that I’ve seen processes that are using more than
    3gbm as far as top is concerned, but I could be wrong (32bit
    system). Also for example, for top, why isn’t the 1gb, reserved for
    the kernel, added in the VIRT space?

66. [Justin Blanton | Anatomy of a program in
    memory](http://justinblanton.com/2009/03/anatomy-program-memory) on
    March 12th, 2009 10:41 pm

    [...] Anatomy of a program in memory. [...]

67. birumut on March 18th, 2009 11:13 am

    thank you very much, in fact it is very useful for me…

68. Nagareddy on March 20th, 2009 12:59 pm

    Very useful and comprehensiv , to point..

    How do you know windows size limits?

69. [Gustavo Duarte](http://duartes.org/gustavo/blog) on March 23rd,
    2009 6:40 pm

    @Nagareddy: which size limits? But regardless of which limits, they
    probably are either from the Windows Internals book, Windows header
    files, or Intel literature
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

70. [Gustavo Duarte](http://duartes.org/gustavo/blog) on March 23rd,
    2009 6:53 pm

    @Alex,

    Thanks! That’s right, a process can’t use more than 3GB of RAM.
    That’s why for example the memcached folks tell you to run multiple
    instances when your box has more than 3GB running in 32-bit mode
    with PAE. Regarding the numbers in top, that would be interesting to
    see. It could be a quirk with the numbers themselves, or it could be
    that there’s some exception going on – but in general your
    understanding is correct – processes can’t use more than 3GB.

    Regarding the 1GB not being shown in VIRT, it’s because the kernel
    accounting ignores the kernel space. It’s just a design issue – why
    worry about it since it’s there for every process? People would be
    shocked to see /bin/ls running with 1GB of virt space
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

71. maverick on April 29th, 2009 12:03 am

    great post.. keep up the good work.. have a doubt regarding the
    memory mapped area for shared libraries..it starts 0×40000000. Does
    it grow upwards or downwards ? I remember it grows upwards. In your
    both figures, its drawn differently.

72. Narayanan on April 30th, 2009 3:27 am

    Hi ,

    I ve doubt regarding malloc allocting memory. How does malloc stores
    information about the size of the pointer as free uses only pointer
    variable as argument and not the size. can u explain which part of
    address space it is stored..?

    Thanks in advance…

73. [Keith Johnson](http://greatdocuments.net) on April 30th, 2009 9:14
    am

    Awesome post! Indeed, memory management cannot be overlooked.

74. [Gustavo Duarte](http://duartes.org/gustavo/blog) on May 3rd, 2009
    9:44 pm

    @maverick: in x86 Linux it grows as shown in the diagrams, but this
    varies by CPU architecture and kernel.

    @Narayanan: Malloc does its own house keeping to know how much was
    allocated to each pointer. The best place to check this out is
    reading the libc source code for malloc and free.

    @Keith: thanks!

75. [Quick Note on Diagrams and the Blog « My
    Site!](http://motherboards.lastdepot.com/?p=9) on May 14th, 2009
    4:41 pm

    [...] colors hold from the earliest post about memory to the latest.
    This convention is why the post about Intel CPU caches shows a blue
    index for the virtually [...]

76. [Brian](http://www.protocolostomy.com) on June 4th, 2009 8:26 am

    Thanks for this post Gustavo. I have a question, though.

    I’m mainly a sysadmin, not a low-level developer, but I need to
    understand this stuff for low-level debugging at the system level.
    Near the top of this post, you mention “ring 2 or lower” as if we
    should all just know what that even means, and I’m sorry to say that
    I do not. Could you point me to a doc that’ll explain that, or could
    you expand on what this notion of “rings” relates to?

    Thanks — all of your posts are top notch.

77. [Gustavo Duarte](http://duartes.org/gustavo/blog) on June 8th, 2009
    9:33 am

    Hi Brian,

    Here you go:
    [http://duartes.org/gustavo/blog/post/cpu-rings-privilege-and-protection](http://duartes.org/gustavo/blog/post/cpu-rings-privilege-and-protection)

    cheers

78. Peter on June 15th, 2009 2:24 pm

    Dear Gustavo,

    Could you send the list of references you use to write Linux
    internals stuff ?

    If you already posted it, please, let me know the url of them.

    Best,

    Peter.

79. EW on July 2nd, 2009 11:38 am

    Very good article. Thanks!

80. ks on July 13th, 2009 9:06 am

    Thanks for the great article thats so simple and crisp.

81. wei on July 22nd, 2009 11:17 pm

    Great post! Solve tons of doubts of mine.\
     Though I still have a few questions hope you can clarify for me.\
     If I understand them right:\
     1)The kernel stuff of kernel space (1GB) is in the physical memory
    (1GB) all the time, unless a user process is trying to access the
    physical memory mapped to kernel space. If that is the case,
    swapping will happen. Right?

    2)So if I only have enough physical memory for kernel mapping, all
    my user processes will need to use the memory mapped to kernel. So I
    will have a lot swapping going on. Right?

    3)Why 1GB? Is it based on the size of resident processes and other
    necessary structures? Or is it hardware related?

    Thanks in advance!

82. Abhijith on July 25th, 2009 11:21 am

    Superbly explained. Love the diagrams. Great work!

83. [Dean](http://www.homepcofva.com) on August 4th, 2009 8:03 pm

    AWESOME articles, extremely helpful! MANY THANKS for all your
    postings! Keep them coming…I have you book-marked! As a professional
    technician, I admire your efforts!

84. KS on August 23rd, 2009 3:55 pm

    This is excellent, probably the best technical documentation I’ve
    ever found on a blog. Thank you!

85. yodacallmesome on September 14th, 2009 2:56 am

    Nice article. It should be noted that there is a special case: When
    clone(2) is used instead of fork(2) to create a process, the address
    mappings are replicated (stack excepted).

86. Godmar Back on September 23rd, 2009 2:22 pm

    It’s not clear which kernel/libc version above information applies
    to.

    For instance, on CentOS 5.3 running a 2.6.18 kernel with Redhat’s
    patches 2.6.18-128.7.1.el5PAE and GNU libc 2.5, some shared
    libraries are located beneath the code segment – which contradicts
    the figure shown above.

    \> tac /proc/21779/maps\
     bfeba000-bff0f000 rw-p bffaa000 00:00 0 [stack]\
     b7f98000-b7f9f000 r–s 00000000 fd:00 36079468
    /usr/lib/gconv/gconv-modules.cache\
     b7f93000-b7f95000 rw-p b7f93000 00:00 0\
     b7d93000-b7f93000 r–p 00000000 fd:00 36001563
    /usr/lib/locale/locale-archive\
     08ae9000-08b4c000 rw-p 08ae9000 00:00 0 [heap]\
     0809c000-080f9000 rw-p 0809c000 00:00 0\
     08098000-0809c000 rw-p 00050000 fd:00 90800216 /bin/tcsh\
     08047000-08098000 r-xp 00000000 fd:00 90800216 /bin/tcsh\
     02b4d000-02b4e000 rwxp 00002000 fd:00 95783275
    /lib/libtermcap.so.2.0.8\
     02b4a000-02b4d000 r-xp 00000000 fd:00 95783275
    /lib/libtermcap.so.2.0.8\
     028ac000-028d3000 rwxp 028ac000 00:00 0\
     028ab000-028ac000 rwxp 00009000 fd:00 95783323
    /lib/libcrypt-2.5.so\
     028aa000-028ab000 r-xp 00008000 fd:00 95783323
    /lib/libcrypt-2.5.so\
     028a1000-028aa000 r-xp 00000000 fd:00 95783323
    /lib/libcrypt-2.5.so\
     0090a000-0090b000 rwxp 00009000 fd:00 95780903
    /lib/libnss\_files-2.5.so\
     00909000-0090a000 r-xp 00008000 fd:00 95780903
    /lib/libnss\_files-2.5.so\
     00900000-00909000 r-xp 00000000 fd:00 95780903
    /lib/libnss\_files-2.5.so\
     008da000-008dc000 rwxp 008da000 00:00 0\
     008d9000-008da000 rwxp 0000f000 fd:00 95783322
    /lib/libresolv-2.5.so\
     008d8000-008d9000 r-xp 0000e000 fd:00 95783322
    /lib/libresolv-2.5.so\
     008c9000-008d8000 r-xp 00000000 fd:00 95783322
    /lib/libresolv-2.5.so\
     006d4000-006d7000 rwxp 006d4000 00:00 0\
     006d3000-006d4000 rwxp 00140000 fd:00 95781738 /lib/libc-2.5.so\
     006d1000-006d3000 r-xp 0013e000 fd:00 95781738 /lib/libc-2.5.so\
     00593000-006d1000 r-xp 00000000 fd:00 95781738 /lib/libc-2.5.so\
     00480000-00481000 rwxp 0001a000 fd:00 95780954 /lib/ld-2.5.so\
     0047f000-00480000 r-xp 00019000 fd:00 95780954 /lib/ld-2.5.so\
     00465000-0047f000 r-xp 00000000 fd:00 95780954 /lib/ld-2.5.so\
     00451000-00452000 r-xp 00451000 00:00 0 [vdso]\
     00115000-00116000 rwxp 00004000 fd:00 95780901
    /lib/libnss\_dns-2.5.so\
     00114000-00115000 r-xp 00003000 fd:00 95780901
    /lib/libnss\_dns-2.5.so\
     00110000-00114000 r-xp 00000000 fd:00 95780901
    /lib/libnss\_dns-2.5.so

87. [Travis](http://personalwebguide.com/) on September 25th, 2009 7:57
    am

    Thanks for the info… I was looking for a graph like that. Studying
    kernel and memory functions in class at the moment, so it’s helpful
    to have a visual.

88. Vikram Gupta on October 9th, 2009 5:38 am

    Good work
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    very well explained.

89. Mukesh Chauhan on October 14th, 2009 4:49 am

    The article explains the memory layout for 32-bit architecture. How
    it will be different in 64-bit architecture? Please give brief
    explaination or provide any link for the same.

    Thanks,\
     -Mukesh Chauhan

90. Gaurab on November 21st, 2009 11:42 am

    Useful post.

    How do you explain this segment:

    08049000-0804a000 r–p 00000000 08:05 276412
    /home/Linux/MemoryMgmt/printMem

    where the permission on this segment is read-only and printMem is
    the c code ? Text are read-execute right ? So, only read perm ?

91. [Kevin Rodrigues](http://www.kevinrodrigues.com) on December 8th,
    2009 2:34 am

    I just happened to view your post when I was searching for the
    structure of a c program in memory. You have provided a lot of
    information which is quite rare on the Internet. Thanks!

92. Amit Pande on December 22nd, 2009 1:47 am

    Great article…no other links I googled explains fundamentals better
    than this ! Not sure how come Google did not rank it higher
    ![;-)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)

93. [Funktionsweise eines Betriebssystems | duetsch.info - GNU/Linux,
    Open Source, Softwareentwicklung, Methodik und
    Vim.](http://www.duetsch.info/funktionsweise-eines-betriebssystems.html)
    on December 28th, 2009 6:20 am

    [...] Anatomy of a Program in Memory [...]

94. kreena on December 30th, 2009 1:25 am

    Hi

    This is very nice blog I ever came across !!!\
     The contents are very clear and written in very simple terms.

    I want to ask you, how can I change the address space layout from
    ‘classic’ to flexible layout

95. divkis on January 4th, 2010 11:18 pm

    Hi, great post overall but I don’t see the addresses of all segments
    shown by examining the maps i.e /proc/pid/maps. I see the stack,
    heap and mapped .so’s but not the other segments. The maps for my
    firefox is shown below. Mine is a debian system with 2.6.32.2 SMP
    kernel.

    Is there any other way to see the complete layout of a process in
    memory?

    08048000-0804f000 r-xp 00000000 08:01 1893676
    /usr/lib/xulrunner-1.9/xulrunner-stub\
     0804f000-08050000 rw-p 00006000 08:01 1893676
    /usr/lib/xulrunner-1.9/xulrunner-stub\
     0810c000-0c599000 rw-p 00000000 00:00 0 [heap]\
     ad6ff000-ad700000 —p 00000000 00:00 0\
     ad700000-adf00000 rw-p 00000000 00:00 0\
     adf00000-ae000000 rw-p 00000000 00:00 0\
     ae84a000-ae84b000 —p 00000000 00:00 0\
     ae84b000-af04b000 rw-p 00000000 00:00 0\
     af2dc000-af6f0000 rw-p 00000000 00:00 0\
     af84c000-af863000 r-xp 00000000 08:01 2949172 /lib/libselinux.so.1\
     af863000-af865000 rw-p 00016000 08:01 2949172 /lib/libselinux.so.1\
     af865000-af874000 r-xp 00000000 08:01 2949251 /lib/libbz2.so.1.0.4\
     af874000-af875000 rw-p 0000f000 08:01 2949251 /lib/libbz2.so.1.0.4\
     af875000-af8d6000 r-xp 00000000 08:01 1749980
    /usr/lib/libgio-2.0.so.0.0.0\
     af8d6000-af8d8000 rw-p 00060000 08:01 1749980
    /usr/lib/libgio-2.0.so.0.0.0\
     af8d8000-af909000 r-xp 00000000 08:01 5038179
    /usr/lib/libcroco-0.6.so.3.0.1\
     af909000-af90c000 rw-p 00030000 08:01 5038179
    /usr/lib/libcroco-0.6.so.3.0.1\
     af90c000-af93d000 r-xp 00000000 08:01 5038181
    /usr/lib/libgsf-1.so.114.0.8\
     af93d000-af940000 rw-p 00030000 08:01 5038181
    /usr/lib/libgsf-1.so.114.0.8\
     af940000-af941000 rw-p 00000000 00:00 0\
     af941000-af971000 r-xp 00000000 08:01 1751442
    /usr/lib/librsvg-2.so.2.22.2\
     af971000-af972000 rw-p 00030000 08:01 1751442
    /usr/lib/librsvg-2.so.2.22.2\
     af985000-af994000 r–p 00000000 08:01 1952770
    /usr/share/icons/Gorilla/icon-theme.cache\
     af994000-afa16000 rw-p 00000000 00:00 0\
     afa16000-afa61000 r–p 00000000 08:01 1787608
    /usr/share/fonts/truetype/ttf-dejavu/DejaVuSerif.ttf\
     afa61000-afa62000 —p 00000000 00:00 0\
     afa62000-b0262000 rw-p 00000000 00:00 0\
     b0262000-b0263000 —p 00000000 00:00 0\
     b0263000-b0a63000 rw-p 00000000 00:00 0\
     b0a63000-b0aaa000 r-xp 00000000 08:01 1843812
    /usr/lib/nss/libnssckbi.so\
     b0aaa000-b0ab6000 rw-p 00046000 08:01 1843812
    /usr/lib/nss/libnssckbi.so\
     b0ab6000-b0af6000 r-xp 00000000 08:01 1843809
    /usr/lib/nss/libfreebl3.so\
     b0af6000-b0af7000 rw-p 0003f000 08:01 1843809
    /usr/lib/nss/libfreebl3.so\
     b0af7000-b0afb000 rw-p 00000000 00:00 0\
     b0aff000-b0b00000 —p 00000000 00:00 0\
     b0b00000-b1300000 rw-p 00000000 00:00 0\
     b1300000-b13fe000 rw-p 00000000 00:00 0\
     b13fe000-b1400000 —p 00000000 00:00 0\
     b1400000-b149c000 rw-p 00000000 00:00 0\
     b149c000-b1500000 —p 00000000 00:00 0\
     b1500000-b1700000 rw-p 00000000 00:00 0\
     b1700000-b1900000 rw-p 00000000 00:00 0\
     b1900000-b1a00000 rw-p 00000000 00:00 0\
     b1afd000-b1afe000 —p 00000000 00:00 0\
     b1afe000-b22fe000 rw-p 00000000 00:00 0\
     b2300000-b24a6000 rw-p 00000000 00:00 0\
     b24a6000-b2500000 —p 00000000 00:00 0\
     b2500000-b26ff000 rw-p 00000000 00:00 0\
     b26ff000-b2700000 —p 00000000 00:00 0\
     b2700000-b27ff000 rw-p 00000000 00:00 0\
     b27ff000-b2800000 —p 00000000 00:00 0\
     b2800000-b2900000 rw-p 00000000 00:00 0\
     b2900000-b2a00000 rw-p 00000000 00:00 0\
     b2a46000-b2a55000 r–p 00000000 08:01 1952770
    /usr/share/icons/Gorilla/icon-theme.cache\
     b2a55000-b2a59000 r-xp 00000000 08:01 2949170
    /lib/libattr.so.1.1.0\
     b2a59000-b2a5a000 rw-p 00003000 08:01 2949170
    /lib/libattr.so.1.1.0\
     b2a5a000-b2a60000 r-xp 00000000 08:01 2949167 /lib/libacl.so.1.1.0\
     b2a60000-b2a61000 rw-p 00005000 08:01 2949167 /lib/libacl.so.1.1.0\
     b2a66000-b2a6c000 r-xp 00000000 08:01 1771346
    /usr/lib/gtk-2.0/2.10.0/loaders/libpixbufloader-xpm.so\
     b2a6c000-b2a6d000 rw-p 00005000 08:01 1771346
    /usr/lib/gtk-2.0/2.10.0/loaders/libpixbufloader-xpm.so\
     b2a6d000-b2a74000 r–p 00000000 08:01 2294627
    /home/divkis01/.icons/gartoon/icon-theme.cache\
     b2a74000-b2a80000 r-xp 00000000 08:01 1802453
    /usr/lib/gnome-vfs-2.0/modules/libfile.so\
     b2a80000-b2a81000 rw-p 0000b000 08:01 1802453
    /usr/lib/gnome-vfs-2.0/modules/libfile.so\
     b2a81000-b2a94000 r-xp 00000000 08:01 1941882
    /usr/lib/totem/gstreamer/libtotem-narrowspace-plugin.so\
     b2a94000-b2a95000 rw-p 00013000 08:01 1941882
    /usr/lib/totem/gstreamer/libtotem-narrowspace-plugin.so\
     b2a95000-b2aa4000 r-xp 00000000 08:01 1941881
    /usr/lib/totem/gstreamer/libtotem-mully-plugin.so\
     b2aa4000-b2aa5000 rw-p 0000f000 08:01 1941881
    /usr/lib/totem/gstreamer/libtotem-mully-plugin.so\
     b2aa5000-b2aba000 r-xp 00000000 08:01 1941880
    /usr/lib/totem/gstreamer/libtotem-gmp-plugin.so\
     b2aba000-b2abb000 rw-p 00015000 08:01 1941880
    /usr/lib/totem/gstreamer/libtotem-gmp-plugin.so\
     b2abb000-b2aff000 r–p 00000000 08:01 1787611
    /usr/share/fonts/truetype/ttf-dejavu/DejaVuSerif-Italic.ttf\
     b2c10000-b2c91000 rw-p 00000000 00:00 0\
     b2d65000-b2e08000 r-xp 00000000 08:01 5038227
    /usr/lib/libgstreamer-0.10.so.0.16.0\
     b2e08000-b2e0c000 rw-p 000a3000 08:01 5038227
    /usr/lib/libgstreamer-0.10.so.0.16.0\
     b2e0c000-b2e16000 r-xp 00000000 08:01 5038237
    /usr/lib/libgstpbutils-0.10.so.0.13.0\
     b2e16000-b2e17000 rw-p 0000a000 08:01 5038237
    /usr/lib/libgstpbutils-0.10.so.0.13.0\
     b2e17000-b2edc000 r-xp 00000000 08:01 1752166
    /usr/lib/libasound.so.2.0.0\
     b2edc000-b2ee0000 rw-p 000c5000 08:01 1752166
    /usr/lib/libasound.so.2.0.0\
     b2ee0000-b2f15000 r-xp 00000000 08:01 5038394
    /usr/lib/libsoup-2.4.so.1.1.0\
     b2f15000-b2f17000 rw-p 00034000 08:01 5038394
    /usr/lib/libsoup-2.4.so.1.1.0\
     b2f17000-b2f6c000 r-xp 00000000 08:01 5038264
    /usr/lib/liboil-0.3.so.0.3.0\
     b2f6c000-b2f83000 rw-p 00055000 08:01 5038264
    /usr/lib/liboil-0.3.so.0.3.0\
     b2f83000-b2f85000 rw-p 00000000 00:00 0\
     b2f85000-b3056000 r-xp 00000000 08:01 5038723
    /usr/lib/libswfdec-0.6.so.90.0.0\
     b3056000-b305d000 rw-p 000d1000 08:01 5038723
    /usr/lib/libswfdec-0.6.so.90.0.0\
     b305d000-b3067000 r-xp 00000000 08:01 5038724
    /usr/lib/libswfdec-gtk-0.6.so.90.0.0\
     b3067000-b3068000 rw-p 0000a000 08:01 5038724
    /usr/lib/libswfdec-gtk-0.6.so.90.0.0\
     b307b000-b307d000 r-xp 00000000 08:01 1804250
    /usr/lib/pango/1.6.0/modules/pango-hangul-fc.so\
     b307d000-b307e000 rw-p 00001000 08:01 1804250
    /usr/lib/pango/1.6.0/modules/pango-hangul-fc.so\
     b307e000-b310f000 rw-p 00000000 00:00 0\
     b310f000-b3111000 r-xp 00000000 08:01 2949485
    /lib/libnss\_mdns4.so.2\
     b3111000-b3112000 rw-p 00001000 08:01 2949485
    /lib/libnss\_mdns4.so.2\
     b3119000-b3124000 r-xp 00000000 08:01 1976017
    /usr/lib/swfdec-mozilla/libswfdecmozilla.so\
     b3124000-b3125000 rw-p 0000b000 08:01 1976017
    /usr/lib/swfdec-mozilla/libswfdecmozilla.so\
     b315b000-b31d8000 r–p 00000000 08:01 1787618
    /usr/share/fonts/truetype/ttf-dejavu/DejaVuSans-Oblique.ttf\
     b31d8000-b326d000 r–p 00000000 08:01 1787607
    /usr/share/fonts/truetype/ttf-dejavu/DejaVuSans.ttf\
     b326d000-b32b4000 r–p 00000000 08:01 1787606
    /usr/share/fonts/truetype/ttf-dejavu/DejaVuSansMono-Bold.ttf\
     b32b4000-b3300000 r–p 00000000 08:01 1787604
    /usr/share/fonts/truetype/ttf-dejavu/DejaVuSansMono.ttf\
     b3300000-b33fd000 rw-p 00000000 00:00 0\
     b33fd000-b3400000 —p 00000000 00:00 0\
     b3400000-b3500000 rw-p 00000000 00:00 0\
     b3500000-b3600000 rw-p 00000000 00:00 0\
     b3603000-b3618000 r-xp 00000000 08:01 1941878
    /usr/lib/totem/gstreamer/libtotem-complex-plugin.so\
     b3618000-b3619000 rw-p 00015000 08:01 1941878
    /usr/lib/totem/gstreamer/libtotem-complex-plugin.so\
     b3619000-b365b000 r–p 00000000 08:01 1787617
    /usr/share/fonts/truetype/ttf-dejavu/DejaVuSerif-BoldItalic.ttf\
     b365b000-b36bb000 rw-s 00000000 00:04 557069 /SYSV00000000
    (deleted)\
     b36bb000-b3700000 r–p 00000000 08:01 1787609
    /usr/share/fonts/truetype/ttf-dejavu/DejaVuSerif-Bold.ttf\
     b3700000-b3900000 rw-p 00000000 00:00 0\
     b3900000-b39f8000 rw-p 00000000 00:00 0\
     b39f8000-b3a00000 —p 00000000 00:00 0\
     b3a03000-b3a0b000 r-xp 00000000 08:01 5038149
    /usr/lib/libfam.so.0.0.0\
     b3a0b000-b3a0c000 rw-p 00007000 08:01 5038149
    /usr/lib/libfam.so.0.0.0\
     b3a0c000-b3a1e000 r–s 00000000 08:01 1810837
    /usr/share/mime/mime.cache\
     b3a1e000-b3a1f000 —p 00000000 00:00 0\
     b3a1f000-b421f000 rw-p 00000000 00:00 0\
     b421f000-b4223000 r-xp 00000000 08:01 2958660
    /lib/i686/cmov/libnss\_dns-2.7.so\
     b4223000-b4225000 rw-p 00003000 08:01 2958660
    /lib/i686/cmov/libnss\_dns-2.7.so\
     b4225000-b4227000 r-xp 00000000 08:01 2949486
    /lib/libnss\_mdns4\_minimal.so.2\
     b4227000-b4228000 rw-p 00001000 08:01 2949486
    /lib/libnss\_mdns4\_minimal.so.2\
     b4229000-b422b000 r-xp 00000000 08:01 5038541
    /usr/lib/libtotem-plparser-mini.so.10.1.1\
     b422b000-b422c000 rw-p 00001000 08:01 5038541
    /usr/lib/libtotem-plparser-mini.so.10.1.1\
     b422c000-b423a000 r-xp 00000000 08:01 1941877
    /usr/lib/totem/gstreamer/libtotem-basic-plugin.so\
     b423a000-b423b000 rw-p 0000d000 08:01 1941877
    /usr/lib/totem/gstreamer/libtotem-basic-plugin.so\
     b423b000-b4242000 r-xp 00000000 08:01 1893797
    /usr/lib/xulrunner-1.9/components/libmozgnome.so\
     b4242000-b4243000 rw-p 00007000 08:01 1893797
    /usr/lib/xulrunner-1.9/components/libmozgnome.so\
     b424e000-b4284000 r–p 00000000 08:01 1787613
    /usr/share/fonts/truetype/ttf-dejavu/DejaVuSansMono-Oblique.ttf\
     b4284000-b4388000 rw-p 00000000 00:00 0\
     b4388000-b4411000 r–p 00000000 08:01 1787605
    /usr/share/fonts/truetype/ttf-dejavu/DejaVuSans-Bold.ttf\
     b4411000-b4412000 r-xp 00000000 08:01 1771438
    /usr/lib/gtk-2.0/2.10.0/loaders/svg\_loader.so\
     b4412000-b4413000 rw-p 00000000 08:01 1771438
    /usr/lib/gtk-2.0/2.10.0/loaders/svg\_loader.so\
     b4413000-b441a000 r–p 00000000 08:01 2294627
    /home/divkis01/.icons/gartoon/icon-theme.cache\
     b441a000-b4436000 r-xp 00000000 08:01 1843811
    /usr/lib/nss/libnssdbm3.so\
     b4436000-b4437000 rw-p 0001c000 08:01 1843811
    /usr/lib/nss/libnssdbm3.so\
     b4437000-b4463000 r-xp 00000000 08:01 1843810
    /usr/lib/nss/libsoftokn3.so\
     b4463000-b4464000 rw-p 0002c000 08:01 1843810
    /usr/lib/nss/libsoftokn3.so\
     b4464000-b4488000 r-xp 00000000 08:01 2213359
    /usr/lib/iceweasel/components/libbrowsercomps.so\
     b4488000-b448a000 rw-p 00024000 08:01 2213359
    /usr/lib/iceweasel/components/libbrowsercomps.so\
     b448a000-b448c000 r-xp 00000000 08:01 5038433
    /usr/lib/libXss.so.1.0.0\
     b448c000-b448d000 rw-p 00001000 08:01 5038433
    /usr/lib/libXss.so.1.0.0\
     b448e000-b4497000 r-xp 00000000 08:01 1893644
    /usr/lib/xulrunner-1.9/components/libimgicon.so\
     b4497000-b4498000 rw-p 00009000 08:01 1893644
    /usr/lib/xulrunner-1.9/components/libimgicon.so\
     b4498000-b449f000 r-xp 00000000 08:01 1893799
    /usr/lib/xulrunner-1.9/components/libnkgnomevfs.so\
     b449f000-b44a0000 rw-p 00007000 08:01 1893799
    /usr/lib/xulrunner-1.9/components/libnkgnomevfs.so\
     b44a0000-b44a6000 r–s 00000000 08:01 5931227
    /var/cache/fontconfig/945677eb7aeaf62f1d50efc3fb3ec7d8-x86.cache-2\
     b44a6000-b44a9000 r–s 00000000 08:01 5931203
    /var/cache/fontconfig/6eb3985aa4124903f6ff08ba781cd364-x86.cache-2\
     b44a9000-b44b0000 r–s 00000000 08:01 5931201
    /var/cache/fontconfig/6d41288fd70b0be22e8c3a91e032eec0-x86.cache-2\
     b44b0000-b44b1000 r–s 00000000 08:01 5931199
    /var/cache/fontconfig/4794a0821666d79190d59a36cb4f44b5-x86.cache-2\
     b44b1000-b44b3000 r–s 00000000 08:01 5931196
    /var/cache/fontconfig/2c5ba8142dffc8bf0377700342b8ca1a-x86.cache-2\
     b44b3000-b44c0000 r–s 00000000 08:01 5931172
    /var/cache/fontconfig/e13b20fdb08344e0e664864cc2ede53d-x86.cache-2\
     b44c0000-b44ce000 r–s 00000000 08:01 5931230
    /var/cache/fontconfig/865f88548240fee46819705c6468c165-x86.cache-2\
     b44ce000-b44cf000 —p 00000000 00:00 0\
     b44cf000-b4ccf000 rw-p 00000000 00:00 0\
     b4ccf000-b4d2f000 rw-s 00000000 00:04 524300 /SYSV00000000
    (deleted)\
     b4d2f000-b4d33000 r-xp 00000000 08:01 1771345
    /usr/lib/gtk-2.0/2.10.0/loaders/libpixbufloader-png.so\
     b4d33000-b4d34000 rw-p 00003000 08:01 1771345
    /usr/lib/gtk-2.0/2.10.0/loaders/libpixbufloader-png.so\
     b4d34000-b4d3c000 r-xp 00000000 08:01 1771772
    /usr/lib/gtk-2.0/2.10.0/engines/libpixmap.so\
     b4d3c000-b4d3d000 rw-p 00007000 08:01 1771772
    /usr/lib/gtk-2.0/2.10.0/engines/libpixmap.so\
     b4d3d000-b4d3e000 —p 00000000 00:00 0\
     b4d3e000-b553e000 rw-p 00000000 00:00 0\
     b553e000-b5547000 r-xp 00000000 08:01 2213355
    /usr/lib/iceweasel/components/libbrowserdirprovider.so\
     b5547000-b5548000 rw-p 00008000 08:01 2213355
    /usr/lib/iceweasel/components/libbrowserdirprovider.so\
     b5548000-b55ae000 r-xp 00000000 08:01 1748133
    /usr/lib/libgcrypt.so.11.4.4\
     b55ae000-b55b0000 rw-p 00066000 08:01 1748133
    /usr/lib/libgcrypt.so.11.4.4\
     b55b0000-b55b3000 r-xp 00000000 08:01 1748135
    /usr/lib/libgpg-error.so.0.3.0\
     b55b3000-b55b4000 rw-p 00002000 08:01 1748135
    /usr/lib/libgpg-error.so.0.3.0\
     b55b4000-b55c3000 r-xp 00000000 08:01 1748163
    /usr/lib/libtasn1.so.3.0.15\
     b55c3000-b55c4000 rw-p 0000e000 08:01 1748163
    /usr/lib/libtasn1.so.3.0.15\
     b55c4000-b55c8000 r-xp 00000000 08:01 5038132
    /usr/lib/libORBitCosNaming-2.so.0.1.0\
     b55c8000-b55c9000 rw-p 00003000 08:01 5038132
    /usr/lib/libORBitCosNaming-2.so.0.1.0\
     b55c9000-b55cb000 r-xp 00000000 08:01 2958671
    /lib/i686/cmov/libutil-2.7.so\
     b55cb000-b55cd000 rw-p 00001000 08:01 2958671
    /lib/i686/cmov/libutil-2.7.so\
     b55cd000-b55dd000 r-xp 00000000 08:01 2958667
    /lib/i686/cmov/libresolv-2.7.so\
     b55dd000-b55df000 rw-p 0000f000 08:01 2958667
    /lib/i686/cmov/libresolv-2.7.so\
     b55df000-b55e1000 rw-p 00000000 00:00 0\
     b55e1000-b55f0000 r-xp 00000000 08:01 1749775
    /usr/lib/libavahi-client.so.3.2.4\
     b55f0000-b55f1000 rw-p 0000e000 08:01 1749775
    /usr/lib/libavahi-client.so.3.2.4\
     b55f1000-b55fc000 r-xp 00000000 08:01 1749773
    /usr/lib/libavahi-common.so.3.5.0\
     b55fc000-b55fd000 rw-p 0000a000 08:01 1749773
    /usr/lib/libavahi-common.so.3.5.0\
     b55fd000-b5694000 r-xp 00000000 08:01 1749770
    /usr/lib/libgnutls.so.26.4.6\
     b5694000-b569a000 rw-p 00097000 08:01 1749770
    /usr/lib/libgnutls.so.26.4.6\
     b569a000-b56d0000 r-xp 00000000 08:01 1749771
    /usr/lib/libdbus-1.so.3.4.0\
     b56d0000-b56d2000 rw-p 00035000 08:01 1749771
    /usr/lib/libdbus-1.so.3.4.0\
     b56d2000-b56ed000 r-xp 00000000 08:01 1749988
    /usr/lib/libdbus-glib-1.so.2.1.0\
     b56ed000-b56ee000 rw-p 0001b000 08:01 1749988
    /usr/lib/libdbus-glib-1.so.2.1.0\
     b56ee000-b570e000 r-xp 00000000 08:01 5038143
    /usr/lib/libaudiofile.so.0.0.2\
     b570e000-b5711000 rw-p 0001f000 08:01 5038143
    /usr/lib/libaudiofile.so.0.0.2\
     b5711000-b5719000 r-xp 00000000 08:01 5038145
    /usr/lib/libesd.so.0.2.36\
     b5719000-b571a000 rw-p 00007000 08:01 5038145
    /usr/lib/libesd.so.0.2.36\
     b571a000-b5720000 r-xp 00000000 08:01 1751390
    /usr/lib/libgailutil.so.18.0.1\
     b5720000-b5721000 rw-p 00006000 08:01 1751390
    /usr/lib/libgailutil.so.18.0.1\
     b5721000-b5729000 r-xp 00000000 08:01 2949412
    /lib/libpopt.so.0.0.0\
     b5729000-b572a000 rw-p 00007000 08:01 2949412
    /lib/libpopt.so.0.0.0\
     b572a000-b585d000 r-xp 00000000 08:01 1748162
    /usr/lib/libxml2.so.2.6.32\
     b585d000-b5862000 rw-p 00132000 08:01 1748162
    /usr/lib/libxml2.so.2.6.32\
     b5862000-b5863000 rw-p 00000000 00:00 0\
     b5863000-b58ac000 r-xp 00000000 08:01 5038133
    /usr/lib/libORBit-2.so.0.1.0\
     b58ac000-b58b5000 rw-p 00049000 08:01 5038133
    /usr/lib/libORBit-2.so.0.1.0\
     b58b5000-b58b6000 rw-p 00000000 00:00 0\
     b58b6000-b58c8000 r-xp 00000000 08:01 5038137
    /usr/lib/libbonobo-activation.so.4.0.0\
     b58c8000-b58ca000 rw-p 00012000 08:01 5038137
    /usr/lib/libbonobo-activation.so.4.0.0\
     b58ca000-b591c000 r-xp 00000000 08:01 5038138
    /usr/lib/libbonobo-2.so.0.0.0\
     b591c000-b5926000 rw-p 00051000 08:01 5038138
    /usr/lib/libbonobo-2.so.0.0.0\
     b5926000-b5935000 r-xp 00000000 08:01 5038163
    /usr/lib/libgnome-keyring.so.0.1.1\
     b5935000-b5936000 rw-p 0000f000 08:01 5038163
    /usr/lib/libgnome-keyring.so.0.1.1\
     b5936000-b5965000 r-xp 00000000 08:01 1751370
    /usr/lib/libgconf-2.so.4.1.5\
     b5965000-b5968000 rw-p 0002e000 08:01 1751370
    /usr/lib/libgconf-2.so.4.1.5\
     b5968000-b59c0000 r-xp 00000000 08:01 5038155
    /usr/lib/libgnomevfs-2.so.0.2200.0\
     b59c0000-b59c3000 rw-p 00057000 08:01 5038155
    /usr/lib/libgnomevfs-2.so.0.2200.0\
     b59c3000-b59d8000 r-xp 00000000 08:01 5038127
    /usr/lib/libart\_lgpl\_2.so.2.3.20\
     b59d8000-b59d9000 rw-p 00014000 08:01 5038127
    /usr/lib/libart\_lgpl\_2.so.2.3.20\
     b59d9000-b59ed000 r-xp 00000000 08:01 5038157
    /usr/lib/libgnome-2.so.0.1999.2\
     b59ed000-b59ee000 rw-p 00013000 08:01 5038157
    /usr/lib/libgnome-2.so.0.1999.2\
     b59ee000-b5a1d000 r-xp 00000000 08:01 1751440
    /usr/lib/libgnomecanvas-2.so.0.2001.0\
     b5a1d000-b5a1e000 rw-p 0002f000 08:01 1751440
    /usr/lib/libgnomecanvas-2.so.0.2001.0\
     b5a1e000-b5a79000 r-xp 00000000 08:01 5038335
    /usr/lib/libbonoboui-2.so.0.0.0\
     b5a79000-b5a7c000 rw-p 0005a000 08:01 5038335
    /usr/lib/libbonoboui-2.so.0.0.0\
     b5a7c000-b5b05000 r-xp 00000000 08:01 5038337
    /usr/lib/libgnomeui-2.so.0.2000.1\
     b5b05000-b5b09000 rw-p 00088000 08:01 5038337
    /usr/lib/libgnomeui-2.so.0.2000.1\
     b5b09000-b5b13000 r-xp 00000000 08:01 2958661
    /lib/i686/cmov/libnss\_files-2.7.so\
     b5b13000-b5b15000 rw-p 00009000 08:01 2958661
    /lib/i686/cmov/libnss\_files-2.7.so\
     b5b15000-b5b1e000 r-xp 00000000 08:01 2958663
    /lib/i686/cmov/libnss\_nis-2.7.so\
     b5b1e000-b5b20000 rw-p 00008000 08:01 2958663
    /lib/i686/cmov/libnss\_nis-2.7.so\
     b5b20000-b5b35000 r-xp 00000000 08:01 2958658
    /lib/i686/cmov/libnsl-2.7.so\
     b5b35000-b5b37000 rw-p 00014000 08:01 2958658
    /lib/i686/cmov/libnsl-2.7.so\
     b5b37000-b5b39000 rw-p 00000000 00:00 0\
     b5b3a000-b5b40000 r-xp 00000000 08:01 1893798
    /usr/lib/xulrunner-1.9/components/libdbusservice.so\
     b5b40000-b5b41000 rw-p 00005000 08:01 1893798
    /usr/lib/xulrunner-1.9/components/libdbusservice.so\
     b5b41000-b5b43000 r-xp 00000000 08:01 1746335
    /usr/lib/gconv/UTF-16.so\
     b5b43000-b5b45000 rw-p 00001000 08:01 1746335
    /usr/lib/gconv/UTF-16.so\
     b5b45000-b5b4c000 r–s 00000000 08:01 1747425
    /usr/lib/gconv/gconv-modules.cache\
     b5b4c000-b5c86000 r–p 00000000 08:01 1762716
    /usr/lib/locale/locale-archive\
     b5c86000-b5c8a000 r-xp 00000000 08:01 1750470
    /usr/lib/libXdmcp.so.6.0.0\
     b5c8a000-b5c8b000 rw-p 00003000 08:01 1750470
    /usr/lib/libXdmcp.so.6.0.0\
     b5c8b000-b5c8d000 r-xp 00000000 08:01 1750468
    /usr/lib/libXau.so.6.0.0\
     b5c8d000-b5c8e000 rw-p 00001000 08:01 1750468
    /usr/lib/libXau.so.6.0.0\
     b5c8e000-b5c95000 r-xp 00000000 08:01 2958668
    /lib/i686/cmov/librt-2.7.so\
     b5c95000-b5c97000 rw-p 00006000 08:01 2958668
    /lib/i686/cmov/librt-2.7.so\
     b5c97000-b5cab000 r-xp 00000000 08:01 1750480
    /usr/lib/libICE.so.6.3.0\
     b5cab000-b5cac000 rw-p 00014000 08:01 1750480
    /usr/lib/libICE.so.6.3.0\
     b5cac000-b5cae000 rw-p 00000000 00:00 0\
     b5cae000-b5cb5000 r-xp 00000000 08:01 1750482
    /usr/lib/libSM.so.6.0.0\
     b5cb5000-b5cb6000 rw-p 00006000 08:01 1750482
    /usr/lib/libSM.so.6.0.0\
     b5cb6000-b5cbe000 r-xp 00000000 08:01 1750606
    /usr/lib/libXcursor.so.1.0.2\
     b5cbe000-b5cbf000 rw-p 00007000 08:01 1750606
    /usr/lib/libXcursor.so.1.0.2\
     b5cbf000-b5cc4000 r-xp 00000000 08:01 1750760
    /usr/lib/libXrandr.so.2.1.0\
     b5cc4000-b5cc5000 rw-p 00005000 08:01 1750760
    /usr/lib/libXrandr.so.2.1.0\
     b5cc5000-b5ccc000 r-xp 00000000 08:01 1750692
    /usr/lib/libXi.so.6.0.0\
     b5ccc000-b5ccd000 rw-p 00007000 08:01 1750692
    /usr/lib/libXi.so.6.0.0\
     b5ccd000-b5ccf000 r-xp 00000000 08:01 1750694
    /usr/lib/libXinerama.so.1.0.0\
     b5ccf000-b5cd0000 rw-p 00001000 08:01 1750694
    /usr/lib/libXinerama.so.1.0.0\
     b5cd0000-b5cdd000 r-xp 00000000 08:01 1750592
    /usr/lib/libXext.so.6.4.0\
     b5cdd000-b5cde000 rw-p 0000c000 08:01 1750592
    /usr/lib/libXext.so.6.4.0\
     b5cde000-b5ce2000 r-xp 00000000 08:01 1750478
    /usr/lib/libXfixes.so.3.1.0\
     b5ce2000-b5ce3000 rw-p 00003000 08:01 1750478
    /usr/lib/libXfixes.so.3.1.0\
     b5ce3000-b5ce5000 r-xp 00000000 08:01 1750686
    /usr/lib/libXdamage.so.1.1.0\
     b5ce5000-b5ce6000 rw-p 00001000 08:01 1750686
    /usr/lib/libXdamage.so.1.1.0\
     b5ce6000-b5ce8000 r-xp 00000000 08:01 5038113
    /usr/lib/libXcomposite.so.1.0.0\
     b5ce8000-b5ce9000 rw-p 00001000 08:01 5038113
    /usr/lib/libXcomposite.so.1.0.0\
     b5ce9000-b5cea000 r-xp 00000000 08:01 1750474
    /usr/lib/libxcb-xlib.so.0.0.0\
     b5cea000-b5ceb000 rw-p 00000000 08:01 1750474
    /usr/lib/libxcb-xlib.so.0.0.0\
     b5ceb000-b5d13000 r-xp 00000000 08:01 1749972
    /usr/lib/libpcre.so.3.12.1\
     b5d13000-b5d14000 rw-p 00027000 08:01 1749972
    /usr/lib/libpcre.so.3.12.1\
     b5d14000-b5d38000 r-xp 00000000 08:01 1747333
    /usr/lib/libexpat.so.1.5.2\
     b5d38000-b5d3a000 rw-p 00023000 08:01 1747333
    /usr/lib/libexpat.so.1.5.2\
     b5d3a000-b5d62000 r-xp 00000000 08:01 5038087
    /usr/lib/libpixman-1.so.0.10.0\
     b5d62000-b5d63000 rw-p 00027000 08:01 5038087
    /usr/lib/libpixman-1.so.0.10.0\
     b5d63000-b5d7a000 r-xp 00000000 08:01 1750472
    /usr/lib/libxcb.so.1.0.0\
     b5d7a000-b5d7b000 rw-p 00017000 08:01 1750472
    /usr/lib/libxcb.so.1.0.0\
     b5d7b000-b5d81000 r-xp 00000000 08:01 5038089
    /usr/lib/libxcb-render.so.0.0.0\
     b5d81000-b5d82000 rw-p 00005000 08:01 5038089
    /usr/lib/libxcb-render.so.0.0.0\
     b5d82000-b5d85000 r-xp 00000000 08:01 5038091
    /usr/lib/libxcb-render-util.so.0.0.0\
     b5d85000-b5d86000 rw-p 00002000 08:01 5038091
    /usr/lib/libxcb-render-util.so.0.0.0\
     b5d86000-b5d99000 r-xp 00000000 08:01 1750908
    /usr/lib/libdirect-1.0.so.0.1.0\
     b5d99000-b5d9a000 rw-p 00012000 08:01 1750908
    /usr/lib/libdirect-1.0.so.0.1.0\
     b5d9a000-b5da1000 r-xp 00000000 08:01 5038081
    /usr/lib/libfusion-1.0.so.0.1.0\
     b5da1000-b5da2000 rw-p 00006000 08:01 5038081
    /usr/lib/libfusion-1.0.so.0.1.0\
     b5da2000-b5e07000 r-xp 00000000 08:01 1750909
    /usr/lib/libdirectfb-1.0.so.0.1.0\
     b5e07000-b5e09000 rw-p 00065000 08:01 1750909
    /usr/lib/libdirectfb-1.0.so.0.1.0\
     b5e09000-b5e0c000 r-xp 00000000 08:01 1749981
    /usr/lib/libgmodule-2.0.so.0.1600.6\
     b5e0c000-b5e0d000 rw-p 00002000 08:01 1749981
    /usr/lib/libgmodule-2.0.so.0.1600.6\
     b5e0d000-b5e14000 r-xp 00000000 08:01 5038314
    /usr/lib/libstartup-notification-1.so.0.0.0\
     b5e14000-b5e15000 rw-p 00007000 08:01 5038314
    /usr/lib/libstartup-notification-1.so.0.0.0\
     b5e15000-b5e19000 r-xp 00000000 08:01 1749978
    /usr/lib/libgthread-2.0.so.0.1600.6\
     b5e19000-b5e1a000 rw-p 00003000 08:01 1749978
    /usr/lib/libgthread-2.0.so.0.1600.6\
     b5e1a000-b5e66000 r-xp 00000000 08:01 1750484
    /usr/lib/libXt.so.6.0.0\
     b5e66000-b5e69000 rw-p 0004c000 08:01 1750484
    /usr/lib/libXt.so.6.0.0\
     b5e69000-b5e6a000 rw-p 00000000 00:00 0\
     b5e6a000-b5e81000 r-xp 00000000 08:01 1751381
    /usr/lib/libgdk\_pixbuf-2.0.so.0.1200.12\
     b5e81000-b5e82000 rw-p 00017000 08:01 1751381
    /usr/lib/libgdk\_pixbuf-2.0.so.0.1200.12\
     b5e82000-b5f05000 r-xp 00000000 08:01 1751382
    /usr/lib/libgdk-x11-2.0.so.0.1200.12\
     b5f05000-b5f08000 rw-p 00083000 08:01 1751382
    /usr/lib/libgdk-x11-2.0.so.0.1200.12\
     b5f08000-b5f21000 r-xp 00000000 08:01 5038097
    /usr/lib/libatk-1.0.so.0.2209.1\
     b5f21000-b5f23000 rw-p 00018000 08:01 5038097
    /usr/lib/libatk-1.0.so.0.2209.1\
     b5f23000-b62a7000 r-xp 00000000 08:01 1751380
    /usr/lib/libgtk-x11-2.0.so.0.1200.12\
     b62a7000-b62ad000 rw-p 00383000 08:01 1751380
    /usr/lib/libgtk-x11-2.0.so.0.1200.12\
     b62ad000-b62ae000 rw-p 00000000 00:00 0\
     b62ae000-b62c3000 r-xp 00000000 08:01 2958666
    /lib/i686/cmov/libpthread-2.7.so\
     b62c3000-b62c5000 rw-p 00014000 08:01 2958666
    /lib/i686/cmov/libpthread-2.7.so\
     b62c5000-b62c7000 rw-p 00000000 00:00 0\
     b62c7000-b62f8000 r-xp 00000000 08:01 5038202
    /usr/lib/libnspr4.so.0d\
     b62f8000-b62f9000 rw-p 00031000 08:01 5038202
    /usr/lib/libnspr4.so.0d\
     b62f9000-b62fb000 rw-p 00000000 00:00 0\
     b62fb000-b62fe000 r-xp 00000000 08:01 5038203
    /usr/lib/libplc4.so.0d\
     b62fe000-b62ff000 rw-p 00002000 08:01 5038203
    /usr/lib/libplc4.so.0d\
     b62ff000-b6301000 r-xp 00000000 08:01 5038204
    /usr/lib/libplds4.so.0d\
     b6301000-b6302000 rw-p 00001000 08:01 5038204
    /usr/lib/libplds4.so.0d\
     b6302000-b63ed000 r-xp 00000000 08:01 1750476
    /usr/lib/libX11.so.6.2.0\
     b63ed000-b63f1000 rw-p 000ea000 08:01 1750476
    /usr/lib/libX11.so.6.2.0\
     b63f1000-b63f9000 r-xp 00000000 08:01 1750604
    /usr/lib/libXrender.so.1.3.0\
     b63f9000-b63fa000 rw-p 00007000 08:01 1750604
    /usr/lib/libXrender.so.1.3.0\
     b63fa000-b64ae000 r-xp 00000000 08:01 1749982
    /usr/lib/libglib-2.0.so.0.1600.6\
     b64ae000-b64af000 rw-p 000b4000 08:01 1749982
    /usr/lib/libglib-2.0.so.0.1600.6\
     b64af000-b64ea000 r-xp 00000000 08:01 1749979
    /usr/lib/libgobject-2.0.so.0.1600.6\
     b64ea000-b64eb000 rw-p 0003b000 08:01 1749979
    /usr/lib/libgobject-2.0.so.0.1600.6\
     b64eb000-b6515000 r-xp 00000000 08:01 1750090
    /usr/lib/libfontconfig.so.1.3.0\
     b6515000-b6516000 rw-p 0002a000 08:01 1750090
    /usr/lib/libfontconfig.so.1.3.0\
     b6516000-b6587000 r-xp 00000000 08:01 1749996
    /usr/lib/libfreetype.so.6.3.18\
     b6587000-b658b000 rw-p 00070000 08:01 1749996
    /usr/lib/libfreetype.so.6.3.18\
     b658b000-b65c9000 r-xp 00000000 08:01 5038105
    /usr/lib/libpango-1.0.so.0.2002.3\
     b65c9000-b65cb000 rw-p 0003d000 08:01 5038105
    /usr/lib/libpango-1.0.so.0.2002.3\
     b65cb000-b65f1000 r-xp 00000000 08:01 5038107
    /usr/lib/libpangoft2-1.0.so.0.2002.3\
     b65f1000-b65f2000 rw-p 00026000 08:01 5038107
    /usr/lib/libpangoft2-1.0.so.0.2002.3\
     b65f2000-b665c000 r-xp 00000000 08:01 5038093
    /usr/lib/libcairo.so.2.17.5\
     b665c000-b665e000 rw-p 0006a000 08:01 5038093
    /usr/lib/libcairo.so.2.17.5\
     b665e000-b6667000 r-xp 00000000 08:01 5038106
    /usr/lib/libpangocairo-1.0.so.0.2002.3\
     b6667000-b6668000 rw-p 00008000 08:01 5038106
    /usr/lib/libpangocairo-1.0.so.0.2002.3\
     b6668000-b66a7000 r-xp 00000000 08:01 5038374
    /usr/lib/libhunspell-1.2.so.0.0.0\
     b66a7000-b66ab000 rw-p 0003e000 08:01 5038374
    /usr/lib/libhunspell-1.2.so.0.0.0\
     b66ab000-b66bf000 r-xp 00000000 08:01 1747421
    /usr/lib/libz.so.1.2.3.3\
     b66bf000-b66c0000 rw-p 00013000 08:01 1747421
    /usr/lib/libz.so.1.2.3.3\
     b66c0000-b66d1000 r-xp 00000000 08:01 5038211
    /usr/lib/libnssutil3.so.1d\
     b66d1000-b66d4000 rw-p 00011000 08:01 5038211
    /usr/lib/libnssutil3.so.1d\
     b66d4000-b67a3000 r-xp 00000000 08:01 5038210
    /usr/lib/libnss3.so.1d\
     b67a3000-b67a7000 rw-p 000cf000 08:01 5038210
    /usr/lib/libnss3.so.1d\
     b67a7000-b67c3000 r-xp 00000000 08:01 5038212
    /usr/lib/libsmime3.so.1d\
     b67c3000-b67c5000 rw-p 0001c000 08:01 5038212
    /usr/lib/libsmime3.so.1d\
     b67c5000-b67ea000 r-xp 00000000 08:01 5038213
    /usr/lib/libssl3.so.1d\
     b67ea000-b67ec000 rw-p 00025000 08:01 5038213
    /usr/lib/libssl3.so.1d\
     b67ec000-b687c000 r-xp 00000000 08:01 1747488
    /usr/lib/libmozjs.so.1d\
     b687c000-b6881000 rw-p 0008f000 08:01 1747488
    /usr/lib/libmozjs.so.1d\
     b6881000-b68b1000 r-xp 00000000 08:01 5038370
    /usr/lib/liblcms.so.1.0.16\
     b68b1000-b68b2000 rw-p 00030000 08:01 5038370
    /usr/lib/liblcms.so.1.0.16\
     b68b2000-b68b5000 rw-p 00000000 00:00 0\
     b68b5000-b68d8000 r-xp 00000000 08:01 1750030
    /usr/lib/libpng12.so.0.27.0\
     b68d8000-b68d9000 rw-p 00023000 08:01 1750030
    /usr/lib/libpng12.so.0.27.0\
     b68d9000-b68f7000 r-xp 00000000 08:01 1749812
    /usr/lib/libjpeg.so.62.0.0\
     b68f7000-b68f8000 rw-p 0001e000 08:01 1749812
    /usr/lib/libjpeg.so.62.0.0\
     b68f8000-b6965000 r-xp 00000000 08:01 1749005
    /usr/lib/libsqlite3.so.0.8.6\
     b6965000-b6967000 rw-p 0006c000 08:01 1749005
    /usr/lib/libsqlite3.so.0.8.6\
     b6967000-b73d9000 r-xp 00000000 08:01 1893684
    /usr/lib/xulrunner-1.9/libxul.so\
     b73d9000-b74b6000 rw-p 00a72000 08:01 1893684
    /usr/lib/xulrunner-1.9/libxul.so\
     b74b6000-b74c6000 rw-p 00000000 00:00 0\
     b74c6000-b74d2000 r-xp 00000000 08:01 2949164 /lib/libgcc\_s.so.1\
     b74d2000-b74d3000 rw-p 0000b000 08:01 2949164 /lib/libgcc\_s.so.1\
     b74d3000-b74f7000 r-xp 00000000 08:01 2958656
    /lib/i686/cmov/libm-2.7.so\
     b74f7000-b74f9000 rw-p 00023000 08:01 2958656
    /lib/i686/cmov/libm-2.7.so\
     b74f9000-b764e000 r-xp 00000000 08:01 2958652
    /lib/i686/cmov/libc-2.7.so\
     b764e000-b764f000 r–p 00155000 08:01 2958652
    /lib/i686/cmov/libc-2.7.so\
     b764f000-b7651000 rw-p 00156000 08:01 2958652
    /lib/i686/cmov/libc-2.7.so\
     b7651000-b7655000 rw-p 00000000 00:00 0\
     b7655000-b7738000 r-xp 00000000 08:01 1745058
    /usr/lib/libstdc++.so.6.0.10\
     b7738000-b773b000 r–p 000e2000 08:01 1745058
    /usr/lib/libstdc++.so.6.0.10\
     b773b000-b773d000 rw-p 000e5000 08:01 1745058
    /usr/lib/libstdc++.so.6.0.10\
     b773d000-b7743000 rw-p 00000000 00:00 0\
     b7743000-b7745000 r-xp 00000000 08:01 2958655
    /lib/i686/cmov/libdl-2.7.so\
     b7745000-b7747000 rw-p 00001000 08:01 2958655
    /lib/i686/cmov/libdl-2.7.so\
     b7747000-b7749000 r-xp 00000000 08:01 1804257
    /usr/lib/pango/1.6.0/modules/pango-basic-fc.so\
     b7749000-b774a000 rw-p 00001000 08:01 1804257
    /usr/lib/pango/1.6.0/modules/pango-basic-fc.so\
     b774a000-b774c000 r-xp 00000000 08:01 5038147
    /usr/lib/libavahi-glib.so.1.0.1\
     b774c000-b774d000 rw-p 00002000 08:01 5038147
    /usr/lib/libavahi-glib.so.1.0.1\
     b774d000-b7754000 r-xp 00000000 08:01 2958659
    /lib/i686/cmov/libnss\_compat-2.7.so\
     b7754000-b7756000 rw-p 00006000 08:01 2958659
    /lib/i686/cmov/libnss\_compat-2.7.so\
     b7756000-b7759000 r-xp 00000000 08:01 1893677
    /usr/lib/xulrunner-1.9/libxpcom.so\
     b7759000-b775a000 rw-p 00002000 08:01 1893677
    /usr/lib/xulrunner-1.9/libxpcom.so\
     b775a000-b775c000 rw-p 00000000 00:00 0\
     b775c000-b775d000 r-xp 00000000 00:00 0 [vdso]\
     b775d000-b7777000 r-xp 00000000 08:01 2949122 /lib/ld-2.7.so\
     b7777000-b7779000 rw-p 0001a000 08:01 2949122 /lib/ld-2.7.so\
     bfce1000-bfd17000 rw-p 00000000 00:00 0 [stack]

96. [Layout of a program in memory | Complete
    Coding](http://kevinrodrigues.com/blog/2009/12/09/layout-of-a-program-in-memory-2/)
    on January 5th, 2010 9:55 am

    [...] area is a read only area of memory.You can learn more details
    about the anatomy of program memory, here.Technorati Tags: virtual
    file system, paging, layout of program memory Related Posts:Modular
    [...]

97. Ashish on January 10th, 2010 11:08 am

    Very Nice post… good effort, thanks a lot for such a valuable
    information. I have a query.\
     If a program define 5GB of a static variable, where it will go
    since process have only 4GB block of virtual memory addresses in
    32-bit mode.

98. [Interesting Reading… – The Blogs at
    HowStuffWorks](http://blogs.howstuffworks.com/2009/02/02/interesting-reading-225/)
    on January 11th, 2010 11:09 am

    [...] Anatomy of a program in memory – “Memory management is the
    heart of operating systems; it is crucial for both programming and
    system administration. In the next few posts I’ll cover memory with
    an eye towards practical aspects, but without shying away from
    internals. While the concepts are generic, examples are mostly from
    Linux and Windows on 32-bit x86. This first post describes how
    programs are laid out in memory….” [...]

99. mike on February 4th, 2010 2:11 am

    good writing and thanks for your sharing.

100. joey on March 24th, 2010 2:05 am

    Please forgive my ignorance or immaturity on this subject, Ive been
    reading on it for the past 2 weeks and I get confusing information
    about the elf.\
     I did a hexdump “\>\>hexdump -C ” in my linux machine on my
    elf(executable) and I was able to trace out the different sections
    and segments with the hexdump “\>\>readelf -x .text “. Now the
    hexdump from the readelf utility has addresses associated with them
    like this:

    0×08048540 ffc70424 74870408 e8e3feff ffe8e300 …\$t………..\
     0×08048550 0000b8a4 8704088d 54242f89 54240489 ……..T\$/.T\$..\
     0×08048560 0424e8b9 feffff0f b644242f 0fbec88b .\$…….D\$/….\
     0×08048570 5424248b 44242889 4c240889 54240489
    T\$\$.D\$(.L\$..T\$..

    I want to know exactly how the kernel associates each byte in the
    elf file to an address like 0×08048540. Please help clarify things,
    I don’t believe in magic. I also read that section .symtab is not
    included in the elf executable file, why is it that the readelf
    utility can perform a hexdump on it like this “\>\>readelf -x
    .symtab ”\
     0×00000000 00000000 00000000 00000000 00000000 …………….\
     0×00000010 00000000 34810408 00000000 03000100 ….4………..\
     0×00000020 00000000 48810408 00000000 03000200 ….H………..\
     0×00000030 00000000 68810408 00000000 03000300 ….h………..

101. Stef on April 19th, 2010 4:20 am

    Salut Gustavo,

    Thanks for your pages, they are great.

    Being knowledgeable in the topic, there is however a tough one I was
    not able to solve myself. Maybe you or someone reading this page can
    cast some light on it?

    I recently installed openSUSE 11.2 32 bits and Kubuntu 9.10, both
    running Linux kernel 2.6.31.

    I don’t understand why cat /proc//maps (related to the top command
    here for example) returns 4 lines per shared libraries (for some,
    not all – the usual 3 lines then).

    3 lines, like in older kernel (2.6.28, …), makes sense: bss, data
    and text segments. In some kernels I noticed also two entries only
    per shared library (bss merged with data, or data only? That makes
    sense, at least)

    However, 4 entries (!), one being a page of rights “—p” (cannot be
    read, written or executed) seems very odd to me. I get the same
    results on my SUSE and Kubtuntu, so – hence no bug. But what then?
    There is nothing much in the ELF format that give me any hint.

    An exemple for libncurses.so.5.6 (related to top):\
     b76ab000-b76e1000 r-xp 00000000 08:02 127570
    /lib/libncurses.so.5.6\
     b76e1000-b76e2000 —p 00036000 08:02 127570 /lib/libncurses.so.5.6\
     b76e2000-b76e4000 r–p 00036000 08:02 127570 /lib/libncurses.so.5.6\
     b76e4000-b76e8000 rw-p 00038000 08:02 127570 /lib/libncurses.so.5.6

    – Stéphane

102. Sudheer on May 24th, 2010 8:12 am

    Hi Guru,

    A basic question.\
     Is there any difference in generation of logical addresses for a
    program in linux OS and windows OS?

103. [Graphics Designer
    Middlesex](http://www.whizsolutions.co.uk/graphics.html) on June
    4th, 2010 11:45 am

    When i was studying my diploma there was a subject called COA which
    has this topic at that time i didn’t get it and this time also.
    (Don’t mind author bcoz my knowledge in hardware functionality is
    very poor) But definitely this post will useful for tech savvy guys

104. Shobhit Gupta on June 30th, 2010 8:48 pm

    Wow, what a great article.\
     I was searching for exactly this kind of (easy to understand)
    detailed information on Process Address Space.

    I couldn’t help not thank you for this article.

    Thanks a lot,\
     Shobhit

105. JAT on July 1st, 2010 5:05 am

    Excellent Work …

106. Super on July 6th, 2010 7:35 pm

    Pretty cool, thank you for your great job! It really helps me a lot.

107. chaitanya on July 9th, 2010 10:57 am

    Thanks for the in-detailed article

108. Anty on July 10th, 2010 1:26 am

    Pretty Cool, THX very much

109. nandu on July 29th, 2010 5:39 am

    Really very informative articles on Linux memory internals.\
     If you write one more article relating Virtual memory,Kernel memory
    with pysical memory(RAM), covering how the kernel gets loaded in RAM
    and stored, how the remaining RAM space is used for this memory
    mapping, really this will give great insight for beginners,

    Thanks,\
     Nandu

110. [Chris](http://o-o-s.de) on August 10th, 2010 12:56 am

    I think you mean “always a 4KB block of memory addresses” instead if
    “always a 4GB block of memory addresses”.

111. Manish on September 27th, 2010 6:59 am

    Ya,very good content ….can you explain little bit more about
    anonymous memory and malloc() relation with it.That will surely
    provide more knowledge to beginner .

112. [Linux memory management 32-bit x86 «
    Stack0verflow](http://stack0verflow.wordpress.com/2010/10/30/4/) on
    October 30th, 2010 11:08 am

    [...] [2]: Understanding the Linux Kernel By Daniel Pierre Bovet,
    Marco Cesatí  [3]: man pages [4]:
    [http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory)
    by Gustavo Duarte [5]:
    [http://wikipedia.org/](http://wikipedia.org/) [6]:
    [http://lxr.linux.no/](http://lxr.linux.no/)
    [7]:[http://linux-mm.org/](http://linux-mm.org/) [...]

113. Girish on November 23rd, 2010 12:13 am

    This is really nice.

    Thanks\
     -Girish

114. apj on November 23rd, 2010 1:12 pm

    Thanks for the awesome article! There is one thing im unable to
    understand.. what goes into the I GB kernel space?. and what about
    kernel processes?.

115. Sashi on December 5th, 2010 9:14 pm

    This is a great article! very well presented and making things
    crystal clear.

    Thanks! and looking forward for more…

116. [Web Developer](http://www.venturosis.com) on February 12th, 2011
    2:55 am

    I can remember doing the fetch-execute cycle at college, could never
    remember it! But this is so much deeper!

    [Web Developer](http://www.venturosis.com)

117. [A collection of articles on virtual memory « kwoz
    online](http://kwoz.wordpress.com/2011/03/22/a-collection-of-articles-on-virtual-memory/)
    on March 22nd, 2011 8:10 am

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

118. UbuntuGuy on March 26th, 2011 12:13 pm

    Great article, very inspiring. make me wanna take out the old c book
    and start kernel programming

119. [How the Linux kernel manages your memory «
    DEEPAK.IO](http://deepak.io/?p=27) on May 6th, 2011 6:29 pm

    [...] examining the virtual address layout of a process, we turn to
    the kernel and its mechanisms for managing user memory. Here is
    gonzo [...]

120. saurin on May 11th, 2011 3:56 pm

    I have a question about the linear to physical memory translation

    According to my understanding,\
     Application run time address itself contains the PGD offset, PTE
    offset and page offset.

    swapper\_pg\_dir is the PGD and located in linux kernel image, and
    linux kernel build the page table for 4GB memory.

    Question is:\
     When MMU translate the linear address to physical address it
    requires Page Global directory table and Page Table array, from
    where it gets that? because PGD and PTE arrays are located itself in
    physical memory

121. Harold Wang on May 25th, 2011 7:55 am

    Amazing Job! Thank you!

122. Raju on May 30th, 2011 10:59 pm

    Hi:

    I was going through your link posted

    [http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory)

    I am having some doubts regarding the Stack segments , does we never
    has Segmenation fault in Linux ??\
     does at time of Stack space on demand stack offset()/mmap offset()\
     comes in picture , can you give me some example how to implement it
    ??

123. Pravin on July 3rd, 2011 8:27 am

    Thanks heaps!
    ![;-)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)

124. [Пользуетесь PHP на 64-х битной платформе? Значит потеряли в
    производительности! :: Архив статей Андрея
    Роговского](http://andreyka.od.ua/141.html) on July 12th, 2011 11:07
    pm

    [...] [...]

125. [Build your own operating system |
    scienceasm](http://scienceasm.wordpress.com/2011/07/21/build-your-own-operating-system/)
    on July 21st, 2011 2:48 am

    [...] how it protects processes from each other. You should also get
    the idea about how the OS lays out executables and shared libraries
    within the process address space and how it creates shared
    memory regions. Two core abstractions of every modern OS [...]

126. [¿Tienes dudas con la memoria? |
    Blog-AitorPazos](http://sande.aitorpazos.es/2009/02/itienes-dudas-con-la-memoria/)
    on July 25th, 2011 8:04 am

    [...]
    [http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory)
    This entry was posted in Linux by Aitor Pazos. Bookmark the
    permalink. [...]

127. Vaibhav Jain on September 1st, 2011 1:28 pm

    This is an awesome article!!\
     But I just have a small query. You have mentioned that the\
     string that the pointer ‘gonzo’ points to – “God’s own prototype”
    is in text segment and is read-only.But then what if I try to change
    the string by assigning some string to \*gonzo like – \*gonzo = “my
    string”. Will it throw a segmentation fault?

128. David on September 15th, 2011 8:47 am

    Great post, (with the virtual address layout) why is [0×0,
    0×08048000) left unmapped? Is it a no-touching region? Any reason?

129. Mars on September 22nd, 2011 7:43 pm

    Hi Gustavo Duarte\
     Thanks for this great article. May I translate it to Traditional
    Chinese?\
     I think this will help more programmers in Taiwan understand this
    concept.

    Thanks again.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

130. [Anatomy of a Program in Memory : Gustavo Duarte | FRANCESCO DI
    FUSCO](http://francescodifusco.wordpress.com/2011/10/31/anatomy-of-a-program-in-memory-gustavo-duarte/)
    on October 31st, 2011 1:43 am

    [...] Anatomy of a Program in Memory : Gustavo Duarte. Share
    this:TwitterFacebookStumbleUponPrintEmailLinkedInLike this:LikeBe
    the first to like this post. This entry was posted in Linux,
    Operating Systems by francescodifusco. Bookmark the permalink. [...]

131. Ramachandra on November 15th, 2011 3:16 am

    Wonderful article… It helped me to regain my position in India’s 3rd
    largest IT company.

132. [itachi](http://www.naruto-spoilers.in) on November 16th, 2011 1:17
    am

    thanks for the article.. i am reading ages after you wrote it.. but
    i am glad i did.. ll go through other posts of yours.. really
    informative!!

133. [From 0×90 to 0x4c454554, a journey into exploitation « Mr.Anubis's
    Blog](http://mr4nu815.wordpress.com/2011/11/30/from-0x90-to-0x4c454554-a-journey-into-exploitation/)
    on November 29th, 2011 7:23 pm

    [...] Anatomy of a program in memory [...]

134. Anon on December 7th, 2011 6:32 pm

    Great article! Thanks.

    I have a query. The figure you have shown is when you have a single
    process. When there are say 2 processes, how will the memory layout
    be? I understand as below from top of memory to bottom\
     1)kernel space(1 gb) same\
     2) all other sections gets split for p1, p2 say of size 3gb/2

    Please correct me if i am wrong.

135. Markus on January 2nd, 2012 2:20 am

    Hi Gustavo!

    Thanks for a great article.

    I am wondering if you could explain what you mean with the
    following:

    “The text segment also maps your binary file in memory, but writes
    to this area earn your program a Segmentation Fault. This helps
    prevent pointer bugs”

    Does it mean that the text segment contains code to make an
    additional mapping of the entire binary file (in addition to the BSS
    and data segments as explained earlier in the article)?

    Also, how do this prevent pointer bugs?

    Brs,\
     Markus

136. kishor kunal on January 17th, 2012 12:21 am

    very nice .thank u dude.

137. Vivek kumar on February 14th, 2012 6:48 am

    Hi,

    Thanks for great explanation, It’s helped me to start it once again
    as I had left this topic.

    Can you please let me know one thing as it will help me to move
    further.\
     “Anyway, here is the standard segment layout in a Linux process:”\
     Is the OS create same layout for every process. Or there is a
    single Heap/Memory for all processes.

    Thanks again for your post.

138. [程序(进程)在内存中的组织-由ld\_brk\_point以及brk函数谈起-Sigma](http://www.sigma.me/2012/04/09/process-in-memory.html)
    on April 9th, 2012 6:05 am

    [...]
    图片来源：[http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory "Linkification: http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory")
    [...]

139. [CS:APP bufbomb 缓冲区溢出攻击 |
    Chaoswork](http://chaoswork.com/blog/2012/04/13/csapp-bufbomb-%e7%bc%93%e5%86%b2%e5%8c%ba%e6%ba%a2%e5%87%ba%e6%94%bb%e5%87%bb/)
    on April 13th, 2012 7:17 am

    [...]
    首先，一个进程是怎么在内存里布局的？强烈建议读一下这篇blog:[http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory,在现代的操作系统中，每个进程都运行在自己的虚拟地址空间中，类似一个沙盒，让每一个进程都感觉自己运行在一个4G的内存空间中，当然这只是给进程以及用户的一种幻觉，实际上每个进程的虚拟地址空间都会被分页机制映射到物理地址的页或者虚拟内存的页，虚拟内存就是当内存不够时用硬盘充当一部份内存使用，比如linux的swap分区。](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory,%E5%9C%A8%E7%8E%B0%E4%BB%A3%E7%9A%84%E6%93%8D%E4%BD%9C%E7%B3%BB%E7%BB%9F%E4%B8%AD%EF%BC%8C%E6%AF%8F%E4%B8%AA%E8%BF%9B%E7%A8%8B%E9%83%BD%E8%BF%90%E8%A1%8C%E5%9C%A8%E8%87%AA%E5%B7%B1%E7%9A%84%E8%99%9A%E6%8B%9F%E5%9C%B0%E5%9D%80%E7%A9%BA%E9%97%B4%E4%B8%AD%EF%BC%8C%E7%B1%BB%E4%BC%BC%E4%B8%80%E4%B8%AA%E6%B2%99%E7%9B%92%EF%BC%8C%E8%AE%A9%E6%AF%8F%E4%B8%80%E4%B8%AA%E8%BF%9B%E7%A8%8B%E9%83%BD%E6%84%9F%E8%A7%89%E8%87%AA%E5%B7%B1%E8%BF%90%E8%A1%8C%E5%9C%A8%E4%B8%80%E4%B8%AA4G%E7%9A%84%E5%86%85%E5%AD%98%E7%A9%BA%E9%97%B4%E4%B8%AD%EF%BC%8C%E5%BD%93%E7%84%B6%E8%BF%99%E5%8F%AA%E6%98%AF%E7%BB%99%E8%BF%9B%E7%A8%8B%E4%BB%A5%E5%8F%8A%E7%94%A8%E6%88%B7%E7%9A%84%E4%B8%80%E7%A7%8D%E5%B9%BB%E8%A7%89%EF%BC%8C%E5%AE%9E%E9%99%85%E4%B8%8A%E6%AF%8F%E4%B8%AA%E8%BF%9B%E7%A8%8B%E7%9A%84%E8%99%9A%E6%8B%9F%E5%9C%B0%E5%9D%80%E7%A9%BA%E9%97%B4%E9%83%BD%E4%BC%9A%E8%A2%AB%E5%88%86%E9%A1%B5%E6%9C%BA%E5%88%B6%E6%98%A0%E5%B0%84%E5%88%B0%E7%89%A9%E7%90%86%E5%9C%B0%E5%9D%80%E7%9A%84%E9%A1%B5%E6%88%96%E8%80%85%E8%99%9A%E6%8B%9F%E5%86%85%E5%AD%98%E7%9A%84%E9%A1%B5%EF%BC%8C%E8%99%9A%E6%8B%9F%E5%86%85%E5%AD%98%E5%B0%B1%E6%98%AF%E5%BD%93%E5%86%85%E5%AD%98%E4%B8%8D%E5%A4%9F%E6%97%B6%E7%94%A8%E7%A1%AC%E7%9B%98%E5%85%85%E5%BD%93%E4%B8%80%E9%83%A8%E4%BB%BD%E5%86%85%E5%AD%98%E4%BD%BF%E7%94%A8%EF%BC%8C%E6%AF%94%E5%A6%82linux%E7%9A%84swap%E5%88%86%E5%8C%BA%E3%80%82)
    [...]

140. [How Does a Startup Out-recruit Google How Google Indexes the Web
    Code Retreat and What Was Learnt in 45 Minutes Flipkart Slideshow
    Banner Anatomy of a Program in Memory What Is and Why Octopress ?
    Welcome ! « CSS
    Tips](http://csstips.org/2012/04/28/how-does-a-startup-out-recruit-google-how-google-indexes-the-web-code-retreat-and-what-was-learnt-in-45-minutes-flipkart-slideshow-banner-anatomy-of-a-program-in-memory-w)
    on April 28th, 2012 1:48 am

    [...] Memory management is the heart of operating systems; it is
    crucial for both programming and system administration. Gustavo
    Duarte,
    [duartes.org/gustavo/blog/post/…](http://duartes.org/gustavo/blog/post/%E2%80%A6 "Linkification: http://duartes.org/gustavo/blog/post/…")
    [...]

141. [How Does a Startup Out-recruit Google How Google Indexes the Web
    Code Retreat and What Was Learnt in 45 Minutes Flipkart Slideshow
    Banner Anatomy of a Program in Memory What Is and Why Octopress ?
    Welcome ! « CSS
    Tips](http://csstips.t1u.org/2012/04/28/how-does-a-startup-out-recruit-google-how-google-indexes-the-web-code-retreat-and-what-was-learnt-in-45-minutes-flipkart-slideshow-banner-anatomy-of-a-program-in-memo)
    on April 28th, 2012 3:15 am

    [...] Here is something that was taught very poorly in the OS class
    that I took as an undergraduate student Memory management is the
    heart of operating systems; it is crucial for both programming and
    system administration. Gustavo Duarte,
    [duartes.org/gustavo/blog/post/…](http://duartes.org/gustavo/blog/post/%E2%80%A6 "Linkification: http://duartes.org/gustavo/blog/post/…")
    [...]

142. Abhinav on May 2nd, 2012 7:44 pm

    It’s an informative post, but there is one thing that is really
    bothering me.\
     I don’t understand if the sections (text,data,bss) are\
     (i) all created at once by the OS & then chunks out of them is
    provided to the needing process, or does\
     (ii)each process has its own unique sections whose actual physical
    location may vary?

    If the answer is (i) then how come a process has linear virtual
    address space?\
     Please provide some explanation…….

143. Allen on May 23rd, 2012 4:29 pm

    Thanks! Provided exactly what I was looking for

144. sanjay on June 7th, 2012 11:42 am

    Gustavo,\
     it is really useful article for me … great post ….. would like to
    read your posts in sequence for understanding the internals ……

    I would like to know more on the memory mapping part mentioned here
    … if you can suggest any post / direct me to your post, it would be
    helpful to me …

    Thanks again Gustavo for your explanation here

    - Sanjay

145. [» Blog Archive »
    【译】程序的内存分布](http://www.seedclass.com/archives/277) on June
    9th, 2012 2:26 am

    [...]
    原文地址请见[http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory，有改动，转载注明出处](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory%EF%BC%8C%E6%9C%89%E6%94%B9%E5%8A%A8%EF%BC%8C%E8%BD%AC%E8%BD%BD%E6%B3%A8%E6%98%8E%E5%87%BA%E5%A4%84 "Linkification: http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory，有改动，转载注明出处")
    。译者邮箱： [email protected] /\* \*/ [...]

146. Prashant on June 17th, 2012 10:48 am

    Really very written article. Thanks for the valuable information
    shared.

147. [chandu](http://chanduthedev.blogspot.in/) on July 4th, 2012 5:12
    am

    Very use full information. Thanks a lot.

148. Kuro on August 2nd, 2012 3:54 pm

    Very well written article!\
     Can you comment what VSZ of ps or VIRT of top value represent ? I
    would like to know how much heap memory my program is consuming. How
    can I figure it out?

149. Ranga Tirumalaseti on September 8th, 2012 1:20 pm

    Great Stuff. Explained in very effective manner.

    Thank you for sharing knowledge.

    An article relatede to Multithreaded programs and memory
    allocations…will be great.

150. [Excelente artigo sobre ‘memory management’ « Bit is
    Myth](http://bitismyth.wordpress.com/2012/09/28/excelente-artigo-sobre-memory-management/)
    on September 28th, 2012 11:45 am

    [...] o artigo aqui. Share this:EmailTwitterFacebookGostar
    disso:GosteiSeja o primeiro a gostar disso. Deixe um [...]

151. abhi on October 8th, 2012 7:24 am

    Thank you. Great post!

    One confusion, doesn’t malloc in libc use the heap? Or does it
    depend on the allocator used?

152. [Hanwen Wu](http://steinwaywu.info) on October 15th, 2012 10:50 am

    Awesome! Thank you for all your articles about memory. Those figures
    are really helpful for understanding those complex things. Thank
    you!

153. sena on November 4th, 2012 12:04 pm

    Beautiful diagrams. I’m a kind of visual learner. I got your page by
    image search “linux process memory model”. As most of the people
    commented early, some of the information I read here is very new and
    gets me more insight into Linux system. Thanks for your time and
    good work.

154. Arun Perumal on November 21st, 2012 3:07 am

    Thanks a lot for the article. This one, clears one of my long
    standing doubt/confusion about “kernel space addresses across all
    the processes”. I had the question raised on stack overflow, and
    finally myself updated a answer with clarification based on your
    article.\

    [http://stackoverflow.com/questions/12995957/linux-kernel-logical-address-for-multiple-processes](http://stackoverflow.com/questions/12995957/linux-kernel-logical-address-for-multiple-processes)

155. [static variable
    initialization](http://cboard.cprogramming.com/c-programming/152499-static-variable-initialization.html#post1135428)
    on November 21st, 2012 1:22 pm

    [...] (excluding some embedded ones) use virtual memory mapping.
    Check out this link for an overview: Anatomy of a Program in Memory
    : Gustavo Duarte. Google "linux process memory layout" for more
    examples and info of how Linux does it. [...]

156. nadji on November 30th, 2012 1:58 pm

    it is the better tutorial thank you

157. leo kirotawa on January 10th, 2013 11:19 am

    Great blog and article =). I’m trying find a good material about
    that. Thanks a lot!

158. abhishek on January 12th, 2013 12:53 pm

    I have some confusion with respect to what you posted\
     you mention “Each process in a multi-tasking OS runs in its own
    memory sandbox. This sandbox is the virtual address space, which in
    32-bit mode is always a 4GB block of memory addresses.”\
     Does that mean on a system with 4GB RAM only one process is running
    at a time?\
     because the same is reflected by the diagram in which firefox is
    running in occupying the blue part of diagram.

    Also what do stack and heap contain in case of a running program?

159. Kavitha Srinivas on February 1st, 2013 4:04 am

    Hi Gustavo,

    Thank you again for the wonder article, I have read you article on
    boot sequence for linux as well.\
     I have a doubt ,\
     1) What is Virtual Memory?

    Some say that virtual memory is nothing but the harddisk and some
    say no its not harddisk. When we run any program we get the virtual
    address where is this address actually present?

    If Virtual memory is Hardisk itself, then harddisk is format with
    some filesystem right? how and which program actuall helps processor
    to access the harddisk.

    Thanks and Regards\
     Kavitha

160. Kavitha Srinivas on February 4th, 2013 3:32 am

    Hi Gustavo,\
     Thank you again for the wonder article, I have read you article on
    boot sequence for linux as well.\
     I have a doubt ,\
     1) What is Virtual Memory?\
     Some say that virtual memory is nothing but the harddisk and some
    say no its not harddisk. When we run any program we get the virtual
    address where is this address actually present?\
     If Virtual memory is Hardisk itself, then harddisk is format with
    some filesystem right? how and which program actuall helps processor
    to access the harddisk.\
     Thanks and Regards\
     Kavitha

161. [Anatomy of a Program in Memory | Arun's
    Blog](http://oldpapyrus.wordpress.com/2013/03/01/anatomy-of-a-program-in-memory/)
    on March 1st, 2013 3:29 am

    [...] article on how a programs reside in the memory at runtime –
    Anatomy of a Program in Memory Share this:ShareEmailLike this:Like
    Loading… This entry was posted in Technical on 1 Mar, 2013 [...]

162. [Program in memory : An insider’s look | Kapil
    Jain](http://jainkkapil.wordpress.com/2013/03/01/program-in-memory-an-insiders-look/)
    on March 1st, 2013 4:17 am

    [...] this Article which presents a very good picture of how a
    program resides in memory while executing. Highlights [...]

163. Mayank on March 8th, 2013 2:21 am

    Very well explained, To know more about memory heap I find this
    thread very helpful :
    [http://stackoverflow.com/questions/79923/what-and-where-are-the-stack-and-heap\#79936](http://stackoverflow.com/questions/79923/what-and-where-are-the-stack-and-heap#79936)
    (See comment from guy named Martin Liversage)

164. Karthik on March 21st, 2013 7:06 am

    Superb post. Have a question though, when running a function multi
    threaded each thread has to have a separate stack. Does it mean in
    the address space there are multiple active stacks ?

165. Pratik on March 28th, 2013 8:06 pm

    Hi Gustavo,

    I understood that user and kernel stacks are two different things
    even if they are refer to the same process. But my question is, does
    kernel has its own separate stack which can be used for user
    independent processing, i.e. scheduler activities. I think,
    scheduler is not accessed by any system call or any user space
    process. But scheduler must have stack for its own processing. So
    which is this stack used by scheduler?

166. Ivan Stanev on April 15th, 2013 2:52 pm

    Hi Gustavo,

    What resides between addresses 0×00000000 and 0×08048000 (the small
    white space at the bottom of your diagrams)? It’s the only thing I
    couldn’t understand…

    Regards

167. Sham on May 4th, 2013 7:48 pm

    Hello Gustavo\
     I am dying to get such details for x64 environment.

168. [Memory Organization in C++ |
    BlogoSfera](http://www.blogosfera.co.uk/2013/05/memory-organization-in-c/)
    on May 6th, 2013 11:57 pm

    [...]
    [http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory)
    [...]

169. [Memory Organization in C++ [closed] |
    BlogoSfera](http://www.blogosfera.co.uk/2013/05/memory-organization-in-c-closed/)
    on May 7th, 2013 6:57 am

    [...]
    [http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory)
    [...]

170. [An access to the heap | Cédric Van
    Rompay](http://cedricvanrompay.wordpress.com/2013/05/15/an-access-to-the-heap/)
    on May 15th, 2013 1:56 am

    [...] Anatomy of a Program in Memory
    [http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory)
    [...]

171. [Dilawar](http://www.ee.iitb.ac.in/student/~dilawar) on May 22nd,
    2013 8:29 am

    Great many things has been said about your blog, but it wouldn’t
    hurt to add one more. This is so far the best post I have ever read
    on Internet. This is possibly as good as Patterson book on computer
    architecture.

172. Jeffrey Walotn on May 22nd, 2013 9:47 am

    “The difference is that BSS stores the contents of uninitialized
    static variables, whose values are not set by the programmer in
    source code.”

    This is not necessarily true. On GNU systems, GCC will put variables
    with static storage (both locals and global) in the BSS. The C/C++
    standard requires they be initialized, and PODs will be initialized
    to 0. So the BSS is initialized in practice (at least some of the
    time on some of the systems).

173. Kindra on May 24th, 2013 1:03 am

    Hi, just wanted to mention, I liked this blog post.

    It was funny. Keep on posting!

174. leizisdu on May 25th, 2013 3:28 am

    Thank you for your explaining:D

175. qinxinliang on June 1st, 2013 7:04 am

    Great work:)\
     I want to translate this article to Chinese, is it OK?

176. [Gustavo Duarte](http://duartes.org/gustavo/blog) on June 2nd, 2013
    8:38 am

    @Dilawar: thank you for such a great compliment.

    @qinxinliang: absolutely.

    @Jeffrey: thanks for the inoput, I’m working on new versions of the
    article and will work to get this fixed.

    @all: thanks for reading!

177. ProgrammingGene on July 2nd, 2013 11:40 pm

    Great insight for beginner like me! My constant reference link! But
    I have one question there is mention of Stack(grows down) ?? Isn’t
    Stack fixed?

178. Arre on July 4th, 2013 3:29 am

    Awesome post!!

179. Girish Balakrishnan on September 9th, 2013 9:27 pm

    Brilliant!! If you write a book I will buy it!!!
    ![:D](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_biggrin.gif)

180. [Pankaj](http://dev-faqs.blogspot.com) on September 28th, 2013 9:57
    pm

    Probably the best explanation I found on the topic and with self
    explanatory diagrams.

    Thank you!\
     Pankaj

181. G\_Lo4 on October 21st, 2013 8:11 pm

    @Gustavo: Great article Gustavo! I have one basic question. What is
    the purpose of having 1GB for kernel pages as in what exactly it
    contains, I thought kernel is a process in itself and it will have
    its own address space different from user process? If this is not
    the case then when kernel scheduler runs what thread/process it is
    part of?\
     \* A similar thread discussion was here
    [http://stackoverflow.com/questions/2445242/what-does-the-kernel-virtual-memory-of-each-process-contain](http://stackoverflow.com/questions/2445242/what-does-the-kernel-virtual-memory-of-each-process-contain)\
     but this thread also does not answer the question.

182. [Gustavo Duarte](http://duartes.org/gustavo/blog) on October 23rd,
    2013 10:09 am

    @GLo: what happens is that when you make a system call, or an
    interrupt handler executes, the kernel suddenly starts running in
    the same virtual address space the process occupied. That’s why the
    kernel needs to be mapped at all times. Does that make sense?

183. [seokbeom Kim](http://chaoxifer.egloos.com) on October 30th, 2013
    8:19 pm

    Awesome…Thanks for great post!

184. [Class Vs Struct | Rohini
    Reddy](http://srohinireddy.wordpress.com/2013/07/05/class-vs-struct/)
    on November 18th, 2013 2:16 am

    [...] stack is a special region of your computer’s memory that
    stores temporary variables created by each function .It follows
     ”FILO” (first in, last out)  order.When a function declared a new
    variable it will be pushed to stack memory,when that function
    exists,all of the variables pushed onto the stack by that function,
    are freed and that memory will be available for other members.Much
    faster to allocate when compare to heap but have to chance stack
    overflow(with very large allocation or recursion).Reference for
    memory allocation is here. [...]

185. [.:[ d4 n3wS ]:. » Anatomie d’un programme chargé en
    mémoire](http://d4n3ws.polux-hosting.com/2014/01/23/anatomie-dun-programme-charge-en-memoire/)
    on January 23rd, 2014 8:48 am

    [...] il y a déjà beaucoup d’articles sur le sujet sur le web mais
    j’ai trouvé celui-ci bien expliqué donc je vous en fait [...]

186. [Anatomy of a Program in Memory | RAHUL
    KUMAR](http://rahulkumar4.wordpress.com/2014/01/23/anatomy-of-a-program-in-memory/)
    on January 23rd, 2014 10:54 am

    [...] Anatomy of a Program in Memory [...]

187. [berkay](http://bekoc.blogspot.com) on February 22nd, 2014 5:19 am

    I have never seen such a clear explanation on this topic. Thanks a
    million Gustavo.

188. [Virtual memory addresses of objdump vs /proc/pid/maps? |
    BlogoSfera](http://www.blogosfera.co.uk/2014/02/virtual-memory-addresses-of-objdump-vs-procpidmaps/)
    on February 24th, 2014 7:01 pm

    [...] at 0×08048000 (an address that apparently was standardized
    back with SYSV for x86; also see Anatomy of a Program in Memory :
    Gustavo Duarte for an [...]

189. [Jarson's blog »
    linux进程内存布局剖析](http://jarson.asia/linux%e8%bf%9b%e7%a8%8b%e5%86%85%e5%ad%98%e5%b8%83%e5%b1%80%e5%89%96%e6%9e%90/)
    on February 25th, 2014 10:20 pm

    [...] anatomy-of-a-program-in-memory 【译】进程内存布局剖析 [...]


