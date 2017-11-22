---
layout: page
title: "Comments"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---
**104 Responses to “The Kernel Boot Process”**

1.  FAb on June 23rd, 2008 8:40 am

    Great article, I loved it. Thanks.

    What tool do you use to generate these cute schema and illustrations
    ?

2.  [Frank Spychalski](http://amazing-development.com) on June 23rd,
    2008 8:44 am

    Excellent article, thanks!

3.  xxx on June 23rd, 2008 8:45 am

    \> Wow, that sounds very complicated. Is the process really that
    complicated?

    No, he made it all up. What were you thinking?!

4.  Maurice on June 23rd, 2008 8:45 am

    Only for people that spam.

5.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on June 23rd, 2008
    9:21 am

    @FAb: cool, you’re welcome. The diagrams were all done in Visio
    2007.

    @Frank: thanks for reading.

    @xxx: hahaha.

    @Maurice: Yea, that comment cum URL is borderline. Sigh.

6.  [Traverse Davies](http://logic11.wordpress.com) on June 23rd, 2008
    9:34 am

    I have been seeing that ultimate anonymity crap come up in so many
    comment threads lately. Funny, always under different URL’s too.
    Other than that, great article (although I really could have used it
    about two weeks ago when trying to fix some weird boot errors, ah
    well, muddled through them in the end)

7.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on June 23rd, 2008
    9:39 am

    Alright, then I’m deleting it. Thanks for the heads up.

8.  [Dreamtorrent](http://www.dreamtorrent.co.uk) on June 23rd, 2008
    11:26 am

    Kick ass article, I enjoyed it!

    It fills in a few blanks I got in my vague knowledge of this
    process, and being pretty humble in my knowledge, don’t think you
    under-complicated it at all – however I now am curious for more
    detail.

    Oh, yeah. Did an upgrade which crashed and it deleted /sbin/init –
    at least now I know what step of the process that was … in
    hindsight. LOL

    Keep it up!

    H

9.  [meneame.net](http://meneame.net/story/secuencia-inicio-kernel-linux-ingles)
    on June 23rd, 2008 11:36 am

    **La secuencia de inicio en el kernel Linux (ingles)…**

    Gran explicación de cómo se inicia el sistema operativo Linux. Quizá
    es un poco compleja para los no informático pero me ha parecido
    interesante….

10. kaizen on June 23rd, 2008 12:26 pm

    what software do you use to create those nice diagrams?

11. [[FAQ] How the Kernel Starts Up - Overclock.net -
    Overclocking.net](http://www.overclock.net/operating-systems/348368-faq-how-kernel-starts-up.html#post4072882)
    on June 23rd, 2008 1:39 pm

    [...] startup of a linux kernel primarily, but describes how the
    windows kernel is different in the end. Link
    \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ BIG BROTHERWe apologize for the
    inconvenience IS [...]

12. [Marius Barbu](http://www.sirartisan.net) on June 23rd, 2008 2:42 pm

    Nice writeup, subscribed!

    However, there’s a little error in the article:\
     “Protected mode requires a register called CR3 to be loaded with
    the address of a Global Descriptor Table for memory”.

    CR3 is the PDBR (Page Directory Base Register, holds the physical
    address of the page directory) so is only needed when paging is
    enabled. The Global Descriptor Table is loaded into GDTR (special
    register just like IDTR) by the lgdt instruction.

13. [Stop Being Carbon · Things I wanna read in the next few
    days](http://www.stopbeingcarbon.com/2008/06/things-i-wanna-read-in-the-next-few-days/)
    on June 23rd, 2008 2:55 pm

    [...] Kernel Boot Process Diary of a failed Startup Who needs a
    Computer Science Degree when there’s Wikipedia Programmer Insecurity
    Metaclass Programming in Python [...]

14. Patrick Moroney on June 23rd, 2008 2:58 pm

    I also highly recommend Linux Kernel Development by Robert Love\
     Much less dry then Understanding the Linux Kernel, and also more
    recent.

    [http://www.amazon.com/Linux-Kernel-Development-Novell-Press/dp/0672327201](http://www.amazon.com/Linux-Kernel-Development-Novell-Press/dp/0672327201)

15. [Gustavo Duarte](http://duartes.org/gustavo/blog) on June 24th, 2008
    12:44 am

    @Dreamtorrent: thanks
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    @kaizen: MS Visio 2007. I use ‘themes’, which make it easy to make
    decent-looking stuff.

    @Marius: thanks for catching it. Fixed in the text.

    @Patrick: thanks for the reference, I’ll add it to the text as well.

16. [Jeff Moser](http://www.moserware.com/) on June 24th, 2008 9:07 pm

    Thanks for the well researched post! I especially liked the links to
    the specific functions in the Linux kernel source.

    I’ve subscribed to your feed and look forward to upcoming posts.

    Keep up the great work!

17. [pligg.com](http://huseyinuslu.net/kernel/links/story.php?id=3) on
    June 25th, 2008 6:08 am

    **The Kernel Boot Process Explained: 2.6.25.6…**

    The kernel boot process for linux 2.6.25.6 explained…

18. Nikesh on June 25th, 2008 7:50 am

    Can not have better then this, awesome !!!

    Thanks.

19. [The Burgeoning Openly Owned Web » links for
    2008-06-28](http://andy.csartec.com/2008/06/28/links-for-2008-06-28/)
    on June 27th, 2008 7:09 pm

    [...] The Kernel Boot Process : Gustavo Duarte the birth of “life”
    (tags: linux kernel boot bootloader) [...]

20. Sara Eulodue on June 29th, 2008 6:07 pm

    This would be infinitely more useful if you showed the Windows boot
    process first since that is what most computers actually use. And
    THEN at the end you can use the academic Linux boot process for
    completeness. Nope, sorry, this gets a thumbs down from me on SU.
    Next.

21. [Kevin DuBois](http://kdubois.net) on June 29th, 2008 10:01 pm

    Great trifecta of boot-up articles, thanks!

22. Naseer on July 1st, 2008 5:14 am

    Awesome article, Thank you !

23. [Gustavo Duarte](http://duartes.org/gustavo/blog) on July 1st, 2008
    10:18 am

    Thank you all for reading and for the feedback.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

24. [Justin Blanton | The kernel boot
    process](http://justinblanton.com/2008/07/the-kernel-boot-process)
    on July 2nd, 2008 1:16 am

    [...] The kernel boot process. [...]

25. Ben Petering on July 7th, 2008 12:40 am

    Very good article. I love the ‘illustrated’ style you used.

    Incidentally, I’ve just skimmed your entire blog, and I’m rather
    impressed. Not only is your English quite good (a concern you voiced
    in one post – IMO, reading TCP/IP Illustrated is a damn good start
    if you’re doing technical writing
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    , but \_every\_ post you’ve written so far looks interesting and
    substantial.

    Keep up the good work. I’ll be back.

    -ben

26. [Linkdump: Teorija kategorija, kako radi kernel… by Nikola
    Plejić](http://nikola.plejic.com/blog/linkdump-teorija-kategorija-kako-radi-kernel/)
    on July 7th, 2008 4:14 am

    [...] Chipsets and the Memory Map, How Computers Boot Up i The
    Kernel Boot Process Za one koje zanima kako računala rade iznutra,
    Gustavo Duarte je napisao seriju članaka čiji je [...]

27. [The Kernel Boot Process « Vietwow’s
    Weblog](http://vietwow.wordpress.com/2008/07/08/the-kernel-boot-process/)
    on July 8th, 2008 8:09 am

    [...] Nguồn :
    [http://duartes.org/gustavo/blog/post/kernel-boot-process](http://duartes.org/gustavo/blog/post/kernel-boot-process)
    [...]

28. [Christian](http://www.treze.net) on July 8th, 2008 1:59 pm

    Muito bom gustavo!\
     Posso traduzir e colocar no meu blog, e uma referência p/ cá?

    []´s

29. eto demerzel on July 8th, 2008 2:51 pm

    It’s fake, photoshopped. Look, you can see the blurred pixel area
    ![:D](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_biggrin.gif)

    Great article, definitely the best explanation about boot up flow
    I’ve found the graphics are the top.

    Good work.

30. [Gustavo Duarte](http://duartes.org/gustavo/blog) on July 9th, 2008
    4:56 am

    @Ben: thanks a ton
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    I’m a huge fan of the W. Richard Stevens books as well, so I fully
    agree they’re a damn good start. What I meant by the English comment
    was that I sometimes feel a lack of non-tech reading has hampered my
    English. Say, when it’s time to come up with a metaphor or the
    ‘right word’, that kind of thing. But I’ve been here in the US for a
    few years now, so it’s less of a problem now.

    @Christian: obrigado, e pode traduzir sem problemas, desde que tenha
    o link. Se vc quiser eu posse te mandar os arquivos Visio 2007 para
    as imagens ou traduzi-las pra voce.

    @eto: hahaha, fake computer pr0n. Anyhow, thanks for the kind words

31. [Regular (S)expressions :: Entries ::
    linkz](http://www.huseyinuslu.net/blog/2008/07/10/linkz/) on July
    10th, 2008 7:18 am

    [...] linux kernel boot process;
    [http://duartes.org/gustavo/blog/post/kernel-boot-process](http://duartes.org/gustavo/blog/post/kernel-boot-process)
    The previous post explained how computers boot up right up to the
    point where the boot loader, [...]

32. [Christian](http://www.treze.net) on July 15th, 2008 8:31 am

    Olá Gustavo!

    Pode deixar que eu vou colocar o link sim.\
     Por favor, me envie os arquivos para eu traduzir.

    Quando eu terminar de traduzir tudo, eu mando para você dar uma
    revisada, vc quer?

    Obrigado e forte abraço!

    Christian

33. Idefix on July 16th, 2008 4:55 am

    Excellent article, but I have one question:\
     If decompression happens in-place, how come the compressed parts
    don’t get overwritten by uncompressed data before those compressed
    part are read?

34. [Alfredo Reino » Archivo del Blog » Cómo arrancan los
    ordenadores](http://www.areino.com/como-arrancan-ordenadores/) on
    July 16th, 2008 8:07 am

    [...] The kernel boot process [...]

35. [Gustavo Duarte](http://duartes.org/gustavo/blog) on July 16th, 2008
    10:43 am

    @Idefix: the compressed image is temporarily moved up in memory a
    notch, creating a ‘buffer zone’ between the place in memory where
    uncompressed contents are being written to and the place where
    compressed contents are read from.

    The code is
    [here](http://lxr.linux.no/linux+v2.6.25.6/arch/x86/boot/compressed/head_32.S#L63).

    cheers

36. [Amjith](http://amjith.blogspot.com) on July 16th, 2008 11:05 am

    Hi Gustavo,\
     The whole process of computer boot up from memory map to kernel
    loading was amazing. I linked your articles to
    [http://www.osnews.com/story/20064/Computer\_Boot\_Up\_Process](http://www.osnews.com/story/20064/Computer_Boot_Up_Process).
    It is refreshing to see articles that are succinct and resourceful.

37. Mojes on July 16th, 2008 3:24 pm

    Thank You!

    This three articles show something very complicated in easy way.
    Good job!\
     I was looking for such text for a long time.

    -mojes

38. Kilian Hekhuis on July 17th, 2008 1:45 am

    “In real-mode the interrupt vector table for the processor is always
    at memory address 0, whereas in protected mode the location of the
    interrupt vector table is stored in a CPU register called IDTR” –
    This is not true. Also in real mode, the CPU uses the IDTR to locate
    the (real mode) IVT. In practice, the IDTR is always set to 0, but
    it could be changed.

39. [Gustavo Duarte](http://duartes.org/gustavo/blog) on July 17th, 2008
    2:01 am

    @Amjith: thank you for the kind words and also for the link. I got a
    ton of traffic from you.

    @Mojes: you’re very welcome!

    @Kilian: Thanks for noting this. I’ll change the language to be more
    accurate.

40. nakisa on August 8th, 2008 12:46 am

    thanks alot , that was great

    i will be so much glad
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    ))))) if you post more and more such sweets.

41. Frederik Braun on August 11th, 2008 8:00 am

    Well explained. I think I got it, despite the fact that I didn’t
    know much about this topic.\
     So, thank you
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)

    Frederik

    P.S.: More posts on this topic will be appreciated
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)

42. [Memory Translation and Segmentation : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/memory-translation-and-segmentation)
    on August 12th, 2008 2:33 am

    [...] segmentation, protection, and paging in Intel-compatible (x86)
    computers, in the spirit of the boot series, as the next step down
    the path of how kernels work. As usual, I’ll link to Linux kernel
    [...]

43. Kimia on August 26th, 2008 11:20 am

    Hi Gustavo,

    that was great article, i had a question , is it possible to monitor
    the boot parameters beacause of finding out if everything is ok or
    not , such as :\
     - MBR parameters(of its code and partition table) and their place
    in memory , and which of them are still in RAM or removed.

    actually , I would like to program it under a program to use it as a
    utility in shell environment , and honestly i don’t khow what must i
    do , and even i don’t khow that it must be a assembly program or it
    can be C one,

    I really will be so much thankful if you lead me in this way,\
     thanks a lot,

    -Kimia

44. kavitha on August 27th, 2008 11:10 pm

    hi duartes\
     you have done a very good job..

    I have few queries : Is there any fixed size in memory reserved for
    user and kernel space? otherwise how can we know the size of memory
    used by kernel and user application?

45. [Gustavo Duarte](http://duartes.org/gustavo/blog) on August 28th,
    2008 1:05 am

    @Kimia: Nearly all of the real-mode data from the kernel is wiped
    out once the protected mode part starts running, so some of these
    early parameters are lost.

    You can however read the MBR and partition table right off of the
    disk, by reading for example a device like /dev/hdxx or /dev/sbxx
    corresponding to your hard disk. It would not be too hard to read
    the partition table and MBR doing that. You might want to read the
    source code for fdisk() and other Linux disk utilities.

    Does this help?

    @kavitha: There is memory that the kernel reserves for itself, yes.
    But there’s also dynamic memory that the kernel allocates and frees
    as it runs. The kernel keeps a database of all of the memory and how
    it has been distributed (which process owns it, etc).

    I’ll write a post on memory this weekend that will cover some of
    this.

46. Kimia on August 28th, 2008 1:48 pm

    Hi Gustavo,

    first of all , thanks alot of your attention and help.\
     I see, so as you said i can read from disk , but unfortunetly i
    don’t know exactly what cammand must be using to read first sector
    from disk in linux, i’m new to linux system programming and so i
    need so much help in this field ,

    would you please guide me to a good way and reference to know more
    about this, i just know rare and not implemented khowledge in real
    systems and i’m new to this world with hungry mind,

    best regards,\
     Kimia

47. [Gustavo Duarte](http://duartes.org/gustavo/blog) on August 28th,
    2008 9:01 pm

    @Kimia: no problem at all. Regarding reading from the disk, it’s
    Unix tradition to expose hardware devices as magic files in the
    filesystem, usually under directory /dev

    Many devices are exposed there as files, including disks. The exact
    name of the file depends on the nature of the device (hard disk, USB
    disk, scanner, sound card, etc), the bus (ide, scsi, sata, usb,
    etc), the order of the device (1st hard drive on bus, 2nd, etc).

    So to read the hard drive, you’d need to find the right device, and
    then you can use regular C functions like open(), read() to read raw
    bytes out of disk.

    However, what I \_really\_ suggest you do is \_read source code\_.
    It’s one of the \_best\_ ways to learn, and in this case there are
    tools that do exactly what you want (MBR and partition table
    manipulation) and whose code is open source. So get yourself the
    code for Linux fdisk, maybe the GRUB configuration installer, and
    read the code. It can teach you a lot.

    Of course, you need some books too. My favorite Unix author was W.
    Richard Stevens, he’s got some great books, but sadly he died and
    the books haven’t been updated. Look in Amazon for his books, maybe
    see what the commenters are saying, and find some 5-star books on
    Unix programming.

    hope this helps,\
     gustavo

48. [Sahaya Darcius](http://sahaya.webnode.com) on September 10th, 2008
    12:00 am

    I really enjoyed this article and it is a very good one to
    understand the kernel boot process. Thank you very much for this
    wonderful article that too in simplified form.

49. sergio on September 16th, 2008 5:09 am

    Hola Gustavo, estaba leyendo tu articulo a ver si me aclaraba
    algunas cosas sobre el proceso de arranque del kernel, ya que soy un
    poco nuevo en estos menesteres.\
     Estoy trabajando con un sistema empotrado y quiero actualizar el
    kernel. Lo he compilado y se me ha generado una imagen del kernel y
    otro archivo con el sistema de ficheros rootfs.ext2. Mi pregunta es,
    ¿es necesario que almacene los dos en la flash de mi sistema
    empotrado? o basta con la imagen del kernel solo?\
     He tratado de arrancar mi nuevo kernel y empieza a descomprimir
    pero de da un panic\
     Kernel panic – not syncing: VFS: Unable to mount root fs on
    unknown-block(0,0)\
     A lo mejor me puedes aclarar un poco como funciona esto. Estoy un
    poco perdido…\
     Gracias por adelantado

50. Peter Teoh on September 19th, 2008 3:19 am

    Fantastic article!!! I love it!!!!

51. ashoka1 on September 23rd, 2008 5:23 am

    nice details about kernel boot-up process. Never found better then
    this. Thank you.

52. [dholm.com » Blog Archive » Tumblelog:
    080929](http://www.dholm.com/2008/09/29/tumblelog-080725/) on
    September 29th, 2008 1:06 am

    [...] The Kernel Boot Process by Gustavo Duarte explains the Linux
    kernel boot process on an x86 platform. Very well written with
    descriptive and good looking diagrams. [...]

53. kimia on November 30th, 2008 1:15 am

    Hi Gustavo again,\
     thanks again and again, this time because of your helpful advices
    and guideline that helped me alot.

54. Tim on December 9th, 2008 12:57 am

    thank you very much !

55. Gautam on December 12th, 2008 6:52 am

    Hi, thanks for this great work.\
     I am trying to read MBR using linux 2.6 kernel.\
     I need a source code for fdisk utility for intel x86 architecture.\
     Could you please guide me to the correct link to follow ?

56. [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 12th,
    2008 10:28 am

    @Gautam:

    The easiest way to do it is to just install source packages for the
    package that contains fdisk. Not sure which distro you have, but you
    would need to:

    ​1. Find which package fdisk came from (rpm or yum or apt should be
    able to tell you)

    ​2. Install the source package that corresponds to that package.
    There’s a 1-to-1 correspondence between binary packages and source
    packages.

    I think in Debian-based distros the package is util-linux, see here:

    [http://packages.qa.debian.org/u/util-linux.html](http://packages.qa.debian.org/u/util-linux.html)

    The FSF has an fdisk project too, but I’m not sure if it’s the same
    thing because they say they provide an alternative to util-linux
    fdisk. The FSF page for their fdisk is here:

    [http://www.gnu.org/software/fdisk/](http://www.gnu.org/software/fdisk/)

    But go with the distro’s source.

57. Frank on December 30th, 2008 12:23 pm

    Gustavo,

    Great article. Any idea where the source code for /sbin/init itself
    is? I’m also interested in the “events” process that is spawned by
    the “init” process, and would like to know where the source code for
    that is as well, if you know.

    -thanks\
     Frank

58. ajit mote on January 19th, 2009 11:40 pm

    Thanks Man !!!\
     Awesome article on boot process !!!

59. Nix on February 5th, 2009 6:14 am

    One minor additional complexity. The initial root filesystem is, by
    default, assembled from the contents of the usr/ subdirectory in the
    kernel source tree (it’s a compressed cpio archive) and linked into
    the kernel image; alternatively, a compressed filesystem image can
    be linked into the kernel image or provided in a separate file. Part
    of the boot process (in init/main.c:do\_basic\_setup()) involves
    executing ‘initcalls’, which are stored in an array of pointers to
    functions to be called at boot time, constructed by the linker. One
    of these initcalls is init/initramfs.c:populate\_rootfs(), which
    initializes the nonswappable memory-backed filesystem which is
    always mounted at / (the \*real\* root filesystem is mounted over
    the top of it, later on). The rootfs is never unmounted: you can see
    it as the first entry in /proc/mounts. Then it uncompresses the cpio
    archive or arranges for the filesystem to be backed by that
    compressed filesystem image, if either are present, and executes
    /init on that filesystem, if present, to complete the boot via an
    ‘early userspace’, chroot to the real root filesystem once it’s
    found it, and exec the real init. So the job of finding root
    filesystems is \*completely\* customizable. You can assemble it from
    a RAID array with some components pulled over the network if you
    like (I’ve done this in extremis as part of disaster recovery).

    Finally, if that didn’t work and we still don’t have a useful root
    filesystem with an /sbin/init on it, just before calling
    init\_post(), the system may call prepare\_namespace() in
    init/do\_mounts.c. This can try to dig up a root filesystem in a
    variety of ways: pausing for a configurable amount of time so the
    user can do something to provide a filesystem, waiting for delayed
    device probes in case the root filesystem is on some slow-to-start
    thing like a SCSI disk or a USB key, doing automated RAID probing
    (somewhat dangerous because it can’t tell if the array it’s
    assembling is actually made of pieces that are meant to go together:
    the recommended way to boot off RAID is to use one of the earlier
    customizable boot processes and run the mdadm tool in there to do
    the assembly), mounting a block device specified via root= on the
    kernel command line, or even asking the user to insert a separate
    floppy containing the root filesystem (I’m not sure \*anyone\* does
    this anymore, even in emergencies).

    I haven’t got into the half a dozen horrible ways the various early
    userspaces can signal their completion (echoing the real device
    numbers into a file in /proc, executing the horrible ‘pivot\_root()’
    syscall, or just deleting everything on the rootfs and doing a
    ‘chroot exec /sbin/init’ into the real root filesystem, which is the
    modern way to boot up because it doesn’t rely on any horrible
    early-userspace-specific hacks). For more, see
    Documentation/filesystems/ramfs-rootfs-initramfs.txt and
    Documentation/initrd.txt in your favourite Linux kernel tree.

60. [Raj](http://www.rajorshi.net/blog) on February 13th, 2009 10:46 pm

    Gustavo, thanks a ton for this article. Excellent explanation of a
    really complex process, even a newbie like me have no problems
    following.

    Big thumbs up!!!

61. [Ya-tou & me » Blog Archive » Memory Translation and
    Segmentation](http://jiang.eu.org/blog/?p=318) on February 19th,
    2009 1:47 am

    [...] in Intel-compatible (x86) computers, going further down the
    path of how kernels work. As in the boot series, I’ll link to Linux
    kernel sources but give Windows examples as well (sorry, I’m
    ignorant about [...]

62. [Ya-tou & me » Blog Archive » The Kernel Boot
    Process](http://jiang.eu.org/blog/?p=320) on February 19th, 2009
    1:49 am

    [...] In a comment below, Nix covered a lot of ground on the initial
    root file system that I glossed over. Thanks to Marius [...]

63. [steampunk.dk » Blog Archive » Nå
    sådan!](http://steampunk.dk/wordpress/?p=15) on April 22nd, 2009
    8:33 pm

    [...] The kernel boot process Posted in IT Teknologi | Leave a
    Comment [...]

64. Andreea Lucau on May 25th, 2009 4:13 pm

    I really liked you article. You have a nice Linux-like sense of
    humor:)

65. Bob Forder on June 5th, 2009 11:53 am

    [quote]This would be infinitely more useful if you showed the
    Windows boot process first since that is what most computers
    actually use. And THEN at the end you can use the academic Linux
    boot process for completeness. Nope, sorry, this gets a thumbs down
    from me on SU. Next.[/quote]

    Yeah, all those Windows kernel hackers out there must be
    disappointed…

66. dp on July 11th, 2009 6:22 pm

    This is \*easily\* the best article on this subject I’ve been able
    to find on the web. Very clear, right level of detail (for me, at
    least), and good references. Thanks very much for writing it.

    I infer from some prior comments that you aren’t a native English
    speaker. Fear not — your English is better than most natives’.

    Any chance you’ll write something comparable, describing EFI? (For
    that matter, I’d like coverage of OSX as well, but suppose that’s
    asking too much.)

    I’ve bookmarked your homepage.

67. [rajakama](http://www.rmthurai.com) on July 28th, 2009 6:49 pm

    Nice Article. Thank you

68. Ashoka on August 19th, 2009 10:20 pm

    Very good article.\
     Thanks a lot
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

69. Naveen on August 20th, 2009 6:41 am

    hi Gustavo,\
     Thanks for the wonderful article but i have question

    what is that “0x3aeb”? i found only “0xeb” (unconditional jump) in
    header.S. what does that “3a” represent? And why do we need this
    unconditional jump here? why can’t we put the start\_of\_setup code
    directly there?

70. [The Boot Process of a Computer | From thoughts to
    text](http://blog.torh.net/2008/06/26/the-boot-process-of-a-computer/)
    on October 16th, 2009 11:07 am

    [...] The Kernel Boot Process [...]

71. dubhe on November 11th, 2009 11:22 am

    Great explanation of a difficult process that if not easy to
    understand, I like to give thanks for this good article

72. [Interesting Reading… – The Blogs at
    HowStuffWorks](http://blogs.howstuffworks.com/2008/06/25/interesting-reading-105/)
    on January 11th, 2010 11:44 am

    [...] The Kernel Boot Process – “The previous post explained how
    computers boot up right up to the point where the boot loader, after
    stuffing the kernel image into memory, is about to jump into the
    kernel entry point. This last post about booting takes a look at the
    guts of the kernel to see how an operating system starts life…”
    [...]

73. raj on January 29th, 2010 1:36 am

    Thanks for such a wonderful article.Need more of this article in
    future.\
     I’ve bookmarked your homepage.

74. pravar on March 23rd, 2010 12:33 am

    good job ………

75. mahayodha on November 9th, 2010 6:52 am

    Thanks a ton for not only this but other great articles too.

76. [Kaiwan](http://www.designergraphix.com) on November 18th, 2010 6:41
    am

    Hi,

    Awesome article Gustav, as usual!

    On the ref books topic, I highly recommend this book on drivers:
    “Essential Linux Device Drivers” by S Venkateswaran.

    [http://www.amazon.com/Essential-Device-Drivers-Sreekrishnan-Venkateswaran/dp/0132396556/ref=sr\_1\_2?ie=UTF8&qid=1290086793&sr=8-2](http://www.amazon.com/Essential-Device-Drivers-Sreekrishnan-Venkateswaran/dp/0132396556/ref=sr_1_2?ie=UTF8&qid=1290086793&sr=8-2)

    It not only covers the “usual” driver-related topics (and plenty of
    ‘em) but also gives a fantastic quick look at kernel internals
    topics most relevant to driver authors.

77. [pravink.22](http://www.redhatlinux.info/) on November 28th, 2010
    3:23 am

    thxs buddy..!!!!\
     Try this, very easy to understand\

    [http://www.redhatlinux.info/2010/11/steps-of-boot-process.html](http://www.redhatlinux.info/2010/11/steps-of-boot-process.html)

78. [figaro](http://www.neo-info.net) on February 10th, 2011 6:32 pm

    Great article, I loved it. Thanks.

79. [Jakub Jankiewicz](http://jcubic.pl) on February 14th, 2011 8:43 am

    Thank a lot for this article.

80. [jonny rocket](http://ms1.gotdns.com) on February 14th, 2011 9:39 am

    nice article. thanks.

81. [Confluence: Next Generation Home Semiconductor
    Development](https://redwood.hq.scei.sony.co.jp/confluence/pages/viewpage.action?pageId=4194930)
    on March 29th, 2011 2:31 am

    **DiagOS????…**

    DiagOS???? DiagOS???? DiagOS ? AMD ???????????????????????OS???
    ???????????????? SuSE Linux 9…….

82. Prabagaran on May 27th, 2011 6:24 am

    Really Nice Article.

    I have a doubt.

    The decompression routines will also be a part of the Compressed
    kernel Image. These routines itself need to be decompressed.

    How does this happen?\
     Thanks in advance.

83. Randy on July 14th, 2011 8:09 am

    Hi,\
     which tool you used for drawing the image of your blog’s article?\
     You know, all these are so beautiful!\
     Thanks for your sharing Linux knowledge..

84. Daniel Ng on August 17th, 2011 5:43 pm

    Nice job, Gustavo.

    I discovered your blog after doing my own trace through the kernel
    (using a JTAG on my PowerPC-based platform).

    What I couldn’t find was which thread (if any) does the scheduler
    actually run in? It must be able to pre-empt other threads so I
    assume it is run in some sort of high-priority parent thread?

    Let me know if you find the answer…

    Cheers,\
     Daniel

85. bonny on August 20th, 2011 7:34 am

    Thank u for this article…it helped me a lot…..

86. [Entendendo o processo de boot do
    Android](http://www.sergioprado.org/2011/08/30/entendendo-o-processo-de-boot-do-android/)
    on August 30th, 2011 8:04 am

    [...] descrição do que acontece "under the hood" no kernel, pode dar
    uma lida no artigo do Gustavo Duarte, da IBM DeveloperWorks e do
    [...]

87. Pranjal Verma on October 13th, 2011 9:16 pm

    Can you explain a bit about booting Linux in VirtualBox.

88. micheal on November 19th, 2011 2:41 am

    could you explain how C language program can operate during booting.
    whether we have a compiler here! ( i bet it e xist) . So what going
    on. thanks for your help!

89. micheal on November 19th, 2011 2:43 am

    and i have a question whether i can know about meaning of linux
    kernel file. what should I do to become a Linux developer

90. [How start\_kernel get start? » Compiler
    Notes(编译点滴)](http://www.lingcc.com/2011/11/26/11814/) on
    November 26th, 2011 12:21 am

    [...]
    [http://duartes.org/gustavo/blog/post/kernel-boot-process](http://duartes.org/gustavo/blog/post/kernel-boot-process)
    [...]

91. Manish on December 20th, 2011 2:56 am

    Really great document .. i am fortunate that i have gone through
    this …\
     Thank you very much

92. Jay on January 29th, 2012 1:31 pm

    Awesome article for a struggling “Operating Systems Concepts”
    student like myself to read!!!!

93. jawad khan on April 4th, 2012 11:01 am

    excellent article.thanks

94. Avijit Das on June 13th, 2012 1:43 am

    Please keep on writing this type of documents. It is really helpful.

95. [[fwd]The Kernel Boot Process «
    gooning](http://gooning.wordpress.com/2012/06/26/fwdthe-kernel-boot-process/)
    on June 26th, 2012 8:45 am

    [...] In a comment below, Nix covered a lot of ground on the initial
    root file system that I glossed over. Thanks to Marius [...]

96. Salvatore on October 16th, 2012 12:41 am

    Excellent summary!

97. [justin bieber shoes](http://newjustinbiebershoes.webs.com/) on
    April 9th, 2013 8:46 pm

    Wow, that’s what I was exploring for, what a information! existing
    here at this website, thanks admin of this web site.

98. [Linux Kernel Online and Book Resources collection | Kaiwan's Tech
    Blog](http://kaiwantech.wordpress.com/2013/07/18/linux-kernel-resources/)
    on July 18th, 2013 5:58 am

    [...] The Kernel Boot Process by Gustavo DuarteExcellent; the
    arch-specific part of the discussion is with relation to Intel x86.
    [...]

99. [linux kernel boot on x86 |
    gooning](http://gooning.wordpress.com/2013/08/07/linux-kernel-boot-on-x86/)
    on August 7th, 2013 12:22 am

    [...] 2.
    [http://duartes.org/gustavo/blog/post/kernel-boot-process](http://duartes.org/gustavo/blog/post/kernel-boot-process)
    [...]

100. [Jayant](http://jayant1212.wordpress.com) on September 26th, 2013
    2:03 am

    Hello\
     I love the way you teach. Would have been real fun to learn from
    you if I had that opportunity.

    Thanks for sharing this immensely valuable resource. I am an instant
    fan of your works.

    Again, great job
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

101. aprogrammer on January 28th, 2014 12:32 am

    Thanks for article. Here is deep runlevel testing if anybody need if
    –
    [http://sysadmin.te.ua/linux/linux-boot.html](http://sysadmin.te.ua/linux/linux-boot.html)

102. [Boot Process | RAHUL
    KUMAR](http://rahulkumar4.wordpress.com/2014/02/07/boot-process/) on
    February 6th, 2014 9:01 pm

    [...]
    [http://duartes.org/gustavo/blog/post/kernel-boot-process](http://duartes.org/gustavo/blog/post/kernel-boot-process)
    [...]

103. [Linux boot sequence | Computer
    Technology](http://jcshan86.wordpress.com/2014/02/23/linux-boot-sequence/)
    on February 23rd, 2014 6:23 pm

    [...]
    [http://duartes.org/gustavo/blog/post/kernel-boot-process](http://duartes.org/gustavo/blog/post/kernel-boot-process)
    [...]

104. [Jarson's blog » Best of : Gustavo
    Duarte](http://www.jarson.asia/best-of-gustavo-duarte/) on February
    24th, 2014 8:14 pm

    [...] how-computers-boot-up kernel-boot-process
    anatomy-of-a-program-in-memory how-the-kernel-manages-your-memory
    [...]


