---
layout: page
title: "Comments"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---
**112 Responses to “Motherboard Chipsets and the Memory Map”**

1.  [How Computers Boot Up : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/how-computers-boot-up)
    on June 5th, 2008 1:03 pm

    [...] previous post described motherboards and the memory map in
    Intel computers to set the scene for the initial phases of boot.
    Booting is an involved, hacky, [...]

2.  [Pádraig Brady](http://www.pixelbeat.org/) on June 10th, 2008 8:13
    am

    Very nice summary thanks.

    I think it’s worth referencing Ulrich Drepper’s paper on memory,\
     which goes into more detail:
    [http://people.redhat.com/drepper/cpumemory.pdf](http://people.redhat.com/drepper/cpumemory.pdf)

3.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on June 10th, 2008
    9:06 am

    Pádraig: absolutely
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    I’m a big fan of that paper too. I was waiting to reference it in an
    upcoming post about virtual memory / memory hierarchy, but it’s
    worth mentioning twice, so I’ll add it here too. Thanks for the
    suggestion.

4.  me on June 11th, 2008 7:26 am

    Thanks for the summary. It was clear and very helpful. I was
    wondering where my 4GB of memory went.

5.  [32-bit OS and 4GB memory «
    Handwaving](http://surana.wordpress.com/2008/06/11/32-bit-os-and-4gb-memory/)
    on June 11th, 2008 8:06 am

    [...] portion of the address space (that last 0.5GB for me) to
    communicate with these other devices (read this); therefore, it’s
    not mapped to RAM. Apparently, XP once supported PAE, an Intel hack
    that [...]

6.  kevin liu on June 11th, 2008 10:37 am

    hi Gustavo, which software did you use to draw the diagrams?

7.  Fred on June 11th, 2008 11:55 am

    Gustavo, conheci seu site hoje, gostei muito dessa parte teórica, já
    adicionei ao meu del.icio.us, vou visita-lo sempre…\
     agora deixa eu ir pq tenho mais coisas interessantes a ler aqui
    hehehe

8.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on June 12th, 2008
    2:45 am

    @me: you’re welcome, glad it helped!

    @kevin: Microsoft Visio 2007 – I wish it had been an open source
    tool. I use “themes” in Visio, which apply styles to all of the
    shapes, easing the process of creating something that looks ok.

    @Fred: valeu, obrigado pelo comentario
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    Eh legal ver comentarios do pessoal do Brasil – eu mesmo estou
    querendo morar ai de novo por uns tempos. Se voce usar algum leitor
    de RSS, adicione o site.

9.  [Memoization - Motherboard chipsets and the Memory
    Map](http://memoization.com/2008/06/13/motherboard-chipsets-and-the-memory-map/)
    on June 13th, 2008 10:51 pm

    [...] Duarte’s blog has some concise well written articles on, I
    particularly like the post on Motherboard Chipsets and the Memory
    Map and language [...]

10. Augusto Caringi on June 17th, 2008 7:14 pm

    Interessante esse post, tmb sou um hobista em relação a “systems
    internals”.\
     Não conhecia esse artigo (pelo tamanho tá mais pra livro) que foi
    citado “What Every Programmer Should Know About Memory”, mas parece
    ser muito completo… vou separar aqui pra ler!\
     Uma dica: As milhares de páginas dos manuais da Intel podem parecer
    intransponíveis a primeira vista para o iniciante, recomendo o livro
    “Protected Mode Software Architecture” da MindShare.\
     Abraço e parabéns.

11. [Gustavo Duarte](http://duartes.org/gustavo/blog) on June 18th, 2008
    11:45 am

    @Augusto: obrigado, e valeu pela sugestao. Abraco.

12. Ol10 on June 23rd, 2008 6:24 pm

    Hi, i liked your article very much because it’s a subject i’ve been
    wanting to know more on for a while. I’ve read it over and over and
    ther is something I still don’t understand. I have no knowledge at
    all on this and it may be why. The thing is that I can’t figure out
    why with 32bits OS the cpu can only adress 4GB ? I understand why in
    64bit it makes 64GB ( using the maths from the beginning ) but by
    using 32 instead of 64 in the formula I don’t get 4
    ![:(](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_sad.gif)
    does the 2\^33 varies depeding on the OS ? Thx anyway great blog!

13. Augusto Caringi on June 23rd, 2008 11:37 pm

    Opa, eu de novo…
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)\
     “An Intel Core 2 QX6600 has 33 pins to transmit the physical memory
    address (so there are 233 choices of memory locations) and 64 pins
    to send or receive data (so data is transmitted in a 64-bit data
    path, or 8-byte chunks). This allows the CPU to physically address
    64 gigabytes of memory (233 locations \* 8 bytes) although most
    chipsets only handle up to 8 gigs of RAM.”\
     acho que essas informacoes nao estao corretas (posso estar
    errado)…\
     ateh onde sei, esse processador, assim como os outros de sua
    familia tem 32 linhas de enderecamento em “modo normal” o que
    possibilita 4GB de memoria. (2\^32 \* 1 byte)\
     esse processador tmb suporta PAE (physical address extension), com
    esse recurso ativado, passam a ser 36 linhas de enderecamento,
    possibilitando 64GB. (2\^36 \* 1 byte)\
     o bus de dados transfere chunks de 64 bits, mas a memoria eh
    enderecada por bytes..

14. chrizel on June 24th, 2008 12:58 am

    Ol10:\
     “The thing is that I can’t figure out why with 32bits OS the cpu
    can only adress 4GB ?”

    2\^32 Bytes = 4294967296 Bytes = 4194304 KB = 4096 MB = 4 GB

    So, a 32 bit system can theoretically address up to 4 GB because
    that’s the maximum of 32 bit binary numbers.

    A 64 bit system can theoretically address up to 2\^64 Bytes so 16
    exabytes. But as you see, there are practical constraints.

15. [Gustavo Duarte](http://duartes.org/gustavo/blog) on June 24th, 2008
    1:07 am

    (chrizel’s explanation is right, we typed at the same time)

    @Ol10: Hi there. There is a difference between what the CPU is
    \_physically\_ capable of addressing and what it is \_logically\_
    capable of addressing.

    The \_physical\_ stuff is determined by hard-core limits: the actual
    metal pins that stick out of the processor. It is \_those\_ pins
    that limit the CPU to 64 gigabytes. That is completely independent
    of the operating system or even the mode (real-mode, 32-bit
    protected, 64-bit) the CPU is running in. It’s a physical limit.
    That is the limit for which that little multiplication is done.
    There are 33 metal pins to transmit an address and 8 metal pins to
    send and receive data. So 2\^33 \* 2\^3 = 2\^36 = 64 GB.

    The “unit” of transfer in this case is 8 bytes, that’s the smallest
    chunk of data the CPU can address on the physical bus. In actuality,
    the CPU usually works in terms of cache lines, which hold 64 bytes
    in the Core 2s. Due to performance, the CPU reads a whole cache line
    at a time. So if a program reads one byte, the CPU actually reads 64
    bytes and stores them in the cache.

    The 4-gb limit is logical, not physical. It happens because the
    registers and instructions in the CPU are limited to 32 bits \_when
    it’s running in 32-bit mode\_, which \_does\_ depend on the OS.
    Programs need to be able to address individual bytes in memory, so
    the “unit” of addressing is 1 byte. So \_that\_ equation becomes
    2\^32 addresses \* 1 byte chunks = 2\^32 bytes, or 4 GB total
    addressing.

    I hope this helps. Thanks for reading.

    @Augusto: bem vindo de novo. De uma olhada nessa explicacao ai de
    cima, pois acho que responde sua pergunta tb. Os numeros que
    menciono no artigo sao as propriedades fisicas do processador, o
    numero de pinos disponiveis para enderecamento (33 pinos) e dados (8
    pinos). De uma olhada no Datasheet for Intel Core 2 Quad-Core para
    esses dados.

    Esses limites entao sao fisicos, independentes do modo da CPU. No
    bus, nao eh possivel enderecar memoria por bytes, pois a performance
    seria abismal. Na pratica, a CPU lida com pedacos de 64 bytes de uma
    vez, que corresponde ao tamanho da cache line.

    Faz sentido?

16. Ol10 on June 24th, 2008 6:19 am

    Ok thank you for explaining.

17. Augusto Caringi on June 25th, 2008 3:34 am

    gustavo,\

    [http://www.cpu-world.com/info/Pinouts/Pentium\_4.html](http://www.cpu-world.com/info/Pinouts/Pentium_4.html)\
     esse diagrama mostra a pinagem do pentium4 (nao achei a do core 2
    quad), como pode ser constatado existem 36 linhas de enderecamento
    (A0-A35) e 64 linhas de dados (D0-D63).

18. [Gustavo Duarte](http://duartes.org/gustavo/blog) on June 25th, 2008
    3:59 am

    @Augusto: hmm, repare no diagrama que vc postou, o primeiro pino de
    enderecamento eh A3\#, ele nao comeca do zero
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    heheh. Tricky. Vai de A3\# a A35\#. Voce pode vir isso pro Core 2 tb
    em

    [http://download.intel.com/design/processor/datashts/31559205.pdf](http://download.intel.com/design/processor/datashts/31559205.pdf)

19. [pligg.com](http://huseyinuslu.net/kernel/links/story.php?id=6) on
    June 25th, 2008 6:12 am

    **Motherboard Chipsets and the Memory Map…**

    Information on x86 architecture…

20. Augusto Caringi on June 26th, 2008 3:34 pm

    gustavo,\
     tens razao… nao tinha me apercebido disso! curioso…\
     mas isso tem uma explicacao… nao existe necessidade das linhas
    A0-A2.\
     “In a similar vein, although the x86 processors can address 64GB of
    RAM, requiring 36 address lines, there are only 33 address bits (A3
    through A35) coming out of the chip. The low-order three bits
    needn’t be specified because in the memory addresses that get out to
    the RAM, by the processor they are always zero — RAM is always read
    and written in eight-byte lumps.”\
     em modo normal (com PAE desativado), sao usadas as linhas A3:A31
    enderecando 4GB de memoria fisica. Com PAE ativado sao usadas todas
    as linhas e ai sim dah pra enderecar 64GB.\
     vivendo e aprendendo! hehe

21. [Linkdump: Teorija kategorija, kako radi kernel… by Nikola
    Plejić](http://nikola.plejic.com/blog/linkdump-teorija-kategorija-kako-radi-kernel/)
    on July 7th, 2008 4:13 am

    [...] Motherboard Chipsets and the Memory Map, How Computers Boot Up
    i The Kernel Boot Process Za one koje zanima kako računala rade
    iznutra, Gustavo Duarte je napisao seriju članaka čiji je cilj
    objasniti kako se računalo zapravo “podiže”. Počinje s matičnim
    pločama i memorijom, završava na detaljnom opisu Linuxovog kernela i
    malo manje detaljnom opisu kernela Windowsa. [...]

22. sushil Mayengbam on July 14th, 2008 12:21 pm

    Hi,

    your pictorial diagram of the modern Intel CPU chip-set is really
    worth thousand words. And off course hat-off to your
    explanation(with diagram) of infamous 640k-1MB legacy memory holes
    of Intel physical address space.

    Keep on hacking good diagrams!!!

    cheers!!!

    - sushil

23. [Gustavo Duarte](http://duartes.org/gustavo/blog) on July 15th, 2008
    12:38 am

    @sushil: thanks! I’m actually thinking most of my posts are going to
    be this sort of technical post + diagrams. I really like doing them,
    glad they were helpful.

24. [Alfredo Reino » Archivo del Blog » Cómo arrancan los
    ordenadores](http://www.areino.com/como-arrancan-ordenadore/) on
    July 16th, 2008 8:02 am

    [...] Motherboard chipsets and the memory map [...]

25. [Weblog of Quests » Computer booting
    process](http://www.yyquest.net/2008/07/17/computer-booting-process)
    on July 17th, 2008 12:27 am

    [...] Motherboard chipsets and the memory map [...]

26. [links for 2008-07-19 « Donghai
    Ma](http://donghaima.wordpress.com/2008/07/19/links-for-2008-07-19/)
    on July 18th, 2008 10:31 pm

    [...] Motherboard Chipsets and the Memory Map : Gustavo Duarte
    (tags: hardware architecture memory kernel computer reference) [...]

27. [teerapap](http://www.teerapap.net) on July 27th, 2008 8:47 am

    Thank you for your article.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

28. [Memory Translation and Segmentation : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/memory-translation-and-segmentation)
    on August 12th, 2008 2:47 am

    [...] the chipsets that power Intel motherboards, memory is accessed
    by the CPU via the front side bus, which connects [...]

29. Raminder on August 28th, 2008 2:20 am

    Hi,

    Thanks for this excellent post. I have a question if you could
    please answer it. As you’ve written

    “When the northbridge receives a physical memory request it decides
    where to route it: should it go to RAM? Video card maybe? This
    routing is decided via the memory address map.”

    My question is who decides what a memory address map should be, is
    it the manufacturer or is it some industry standard. Is it also
    influenced by the history of how x86 evolved? e.g. does real mode
    play any role in it?

    Raminder

30. Raminder on August 28th, 2008 2:22 am

    also forgot to ask, is the memory map hardwired in motherboard or is
    it prepared when the system boots? also is it configurable through
    BIOS?

31. [Gustavo Duarte](http://duartes.org/gustavo/blog) on August 28th,
    2008 9:20 pm

    @Raminder: hmm, hahah, it’s a little of everything you said. There
    are some standards, it’s history, and real mode does play a role.

    Concerning standards, there are many addresses that are mapped to
    well-known devices. Whether this came from an official standard at
    some point or became a de-facto standard because IBM first did it, I
    have no idea. But if you google, there are certain regions, like the
    address of the text mode video memory, that are well known.

    In any DOS machine, you could have a C pointer, point it to a
    certain well-known address, and muck with the video memory.

    Real mode plays a role because the CPU is only capable of addressing
    1MB when in real mode, so many of the physical addresses mapped to
    well-known devices must fall under 1MB of memory.

    This was all influenced by history, basically with the BIOS
    encroaching into more and more physical addresses for additional
    devices and so on.

    Finally, the memory map is definitely prepared at boot time, because
    it depends directly on the devices present in the system. There is a
    protocol where the devices on a bus (say, PCI) say what they need,
    and the BIOS figures it out, dishes out resources (IRQs, memory
    addresses, I/O ports) and builds the memory map.

    It’s also possible to programatically affect the memory map by
    talking to the chipset. You should see Intel’s chipset
    documentation, like the one I linked in the post, as it might shed
    some more light into this stuff.

    I don’t work with this stuff, so take it all with a grain of salt,
    but this is my understanding.

32. Raminder on August 28th, 2008 10:19 pm

    Thank you so much Gustavo, I really appreciate your taking pains to
    explain in detail my question. And I’ve downloaded the Intel’s
    chipset documentation that you linked. Thanks once again and keep up
    the good work. You rock man!

33. [James
    Baptist](http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory)
    on September 4th, 2008 8:00 am

    Mr.Duarte,\
     Thank you for your very informative article.For the 1st time I am\
     to learn a little about memory chips.Wish you all the best and hope
    you will share more info under this portal.

    J.Baptist

34. scrAb\_ on October 20th, 2008 6:35 am

    Hi Gustavo,\
     But Pentium III/IV has a address bus of 36 bit, right?\
     So it also could address 64 GB of memory (2\^36)\
     Am i wrong?

35. scrAb\_ on October 20th, 2008 6:38 am

    Hi Gustavo,\
     Great P.O.S.T:)\
     I remember that pentium III/IV has an address size of 36 bit, so\
     they also could address 64 GB of memory (2\^36)? Am i wrong?\
     Thank you

36. [Mattiesworld » Blog Archive » Boot process
    explained](http://mattiesworld.gotdns.org/weblog/2008/10/24/boot-process-explained/)
    on October 24th, 2008 3:18 pm

    [...] Part 1: Motherboards, chipsets and the memory map [...]

37. [x86 hardware/software boot process in detail :
    mw](http://wilsoniya.no-ip.org/blog/?p=59) on November 3rd, 2008
    7:26 pm

    [...] Chipset, memory map, and logical motherboard [...]

38. Insemyabams on November 22nd, 2008 8:57 am

    Hi,

    I need full kit of solar energy complect for my home, Where I can
    look at thechnical specifications and examples? We search on
    internet and not find this.
    ![:(](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_sad.gif)
    Please if you have some documentation please post.

39. [enoidem godwin](http://www.answer.com) on December 1st, 2008 12:21
    pm

    i just want to say that the explanation on the chipset are
    recomenable thankyou

40. Undorhoof on December 1st, 2008 5:34 pm

    Hi. I on numerous occasions be familiar with this forum. This is the
    head together unqualified to ask a topic.\
     How multitudinous in this forum are references progressive behind,
    artful users?\
     Can I worthiness all the communication that there is?

41. sam on December 27th, 2008 7:01 am

    given a 512by8 memory using 16G address line, What is the memory map

42. [el\_bot](http://www.eltita.com.ar) on December 27th, 2008 12:01 pm

    I think that Pentium IV can access memory (RAM, ROM, mapped memory)
    in byte-basis (or word, or double word) if it’s necessary; btw, news
    CPUs also can.\
     Some reasons for this necessity :\
     -you should write in a port 1 byte wide (one byte and only one)\
     -you should implement a spin-lock in a environment SMP (i.e you
    need synchronize 2 CPU via memory). Intrucctions like “read-and-set
    in only one memory access” works over only one byte, not 8 bytes.

    In this situations you need address less than 8 bytes; it’s would
    explain the need for 36 lines even when only 33 seems to be enough.
    “RAM is NOT always read and written in eight-byte lumps”

    (yes yes, sorry by my bad English; saludos desde Argentina, cuna del
    jugador “mais grande do mundo”
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)
    )

43. [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 29th,
    2008 1:17 am

    @el\_bot: Na hay problema, yo soy Brasileno y tambien no hablo el
    Ingles como mi primero idioma, pero mi espanol es terrible. hehehe.

    Anyhow, you bring up some good issues. I’ll write a post to address
    them. But here is the short answer:

    There are two main groups of pins in the CPU involved in memory and
    I/O transactions: the REQ[4:0]\# pins (4 total) and the A[35:3]\#
    pins (33 total). These pins interact with the front side bus to read
    and write memory, and also to access the I/O ports.

    When an access takes place, the agent that initiates the transaction
    puts out 2 packets into the FSB that describe the access. These
    packets describe the request fully. The ADDRESS part of the request
    is always \_only\_ 33 bits long, and the lower 3 bits are assumed to
    be zero. Thus the processor ALWAYS addresses memory on 8-byte
    boundaries, or “aligned” to 8 bytes.

    For a regular memory access, 8 bytes is not enough because the
    processor will want to fill up a complete cache line (64 bytes on
    modern Pentiums). So the FSB request actually has a length of 64
    bytes, starting with the base address specified in the A pins.

    However, some types of memory access, for example access to
    uncacheable memory (such as the memory used for memory-mapped I/O)
    the processor specifies a length of up to 8 bytes (ie, 8 bytes or
    less).

    When the “8 bytes or less” length is specified, in the second packed
    that goes into the FSB, the processor asserts a byte mask in pins
    A[15:8]\# of the processor that specify which bytes should be read
    or written to.

    Thus it IS possible to address a single byte or word as you
    correctly point out. But this is the exception to the rule,
    basically only happens for uncacheable memory.

    In the spin-lock case, the processor would be working directly off
    of the L1 cache because the spin lock would be in cacheable memory,
    so the single byte would not need to be read from main memory. But
    there would be bus locking and snooping going on, so there is some
    FSB action.

    This is a lot of stuff. I’ll write a post on it covering some of
    this and include some diagrams.

    Saludos!

44. [el\_bot](http://www.eltita.com.ar) on December 30th, 2008 9:43 am

    Excelent clarification! I am happy, my “intuition” was not completly
    wrong !\
     Only a comment: by your description it’s to seem that FSB work
    different that RAM (at least, DDR). I think remember, that in RAM,
    if you want access less that “common” size (typically, 4/8 bits at
    chip level, 8 bytes at module level), you must specify it all at
    once (i.e you set the address of the chunk of memory and mask-out
    bit/bytes at the same time, i.e in the same clock). That is, FSB
    works in “serial mode”; RAM works in parallel. If I’m right, in new
    architectures (maybe also in AMD) the CPU (actually, the memory
    controller embbed with the CPU) talks directly with the RAM; and in
    this case, the byte would be must addressed directly (that is, you
    need “number of address pins” == “log2 of maximun size of physical
    memory supported”). I will try check it in I7 (btw, I7 don’t have
    FSB… I believe it).

    Saludos.

45. Thad on December 31st, 2008 3:34 pm

    I was wondering if anyone could clarify this for me. I hear people
    saying that if you have a video card with 1 gigabyte of memory and a
    32 bit OS the maximum amount of system ram that can be installed is
    3GB. I believe this to be false because video ram is not mapped to
    the system, only the GPU. So a 32 bit OS can indeed address 4GB of
    system ram while having a 1GB video card installed (I know linux can
    address this memory for system use with proper modules). Or am I
    wrong and all 1GB of that video memory gets mapped into the system
    address space?

46. [Few Links browsed and liked to explore… « It’s
    Alright!!](http://alright.wordpress.com/2009/01/02/few-links-browsed-and-liked-to-explore/)
    on January 2nd, 2009 12:47 pm

    [...] Computers Boot Up – is nicely presented as much as needed to
    knowMotherboard Chipsets and Memory Map Possibly related posts:
    (automatically generated)3D modeling: What one poor man does when
    his wife [...]

47. [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 5th,
    2009 10:23 pm

    @Thad: Unfortunately, people are right. The problem is that the
    range of addresses is taken out of the PHYSICAL memory range, not
    the virtual memory range of a given process or the kernel.

    You are right that the kernel does NOT lose virtual address space to
    the video card mapping, but unfortunately it doesn’t matter as the
    physical range is taken anyway.

48. sabrina on January 10th, 2009 2:35 am

    I’ve just joined this site and it looks great.

49. Fredrik Viksten on January 14th, 2009 6:37 am

    Hi!

    I have a question that I think that you might be able to answer:

    I just bought an ASUS laptop with the P45 chipset which is supposed
    to support 8 Gb of RAM. In the technical specifications I see that
    ASUS claims 4 Gb to be the maximum. I can see two reasons for this:

    ​1) Since the laptop comes with Windows Vista 32.bit preinstalled it
    might be that ASUS is trying to avoid a PR-mishap. This might or
    might not mean that the laptop actually supports 8 Gb, i.e. case 2
    might still be relevant:

    ​2) The BIOS is written so that it only supports 4 Gb of RAM
    even-though the chipset supports 8 Gb. This might be good from a
    marketing point of view or the reason might be that it is good
    enough.

    My question, given that it is infact the BIOS that restricts the
    computer from using 8 Gb of RAM is:

    Is is probable that this be fixed by modifying the BIOS?

    What would such a fix do? Change the memory map only or is it
    probable that some other fix also would be needed?

    I would really appreciate any input on this!\
     Thanks!\
     Fredrik

50. [Getting Physical With Memory : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/getting-physical-with-memory)
    on January 15th, 2009 11:16 am

    [...] of the physical memory range in an Intel computer is mapped to
    devices like hard drives and network cards instead of actual RAM
    memory. This allows drivers to communicate [...]

51. [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 15th,
    2009 2:55 pm

    Hi Fredrik,

    This is a good question. I’m no BIOS engineer, but I’ll throw out
    some ideas here:

    ​1. As a test, you could boot the computer using a 64-bit Linux live
    CD and see what the kernel is saying. Do you have the actual RAM
    sticks to test \> 4GB?

    ​2. Once kernel boots and goes into protected mode, the bios is out
    of the picture. The BIOS is NOT involved at all in memory
    translation and such. It’s all between the CPU, the kernel (via page
    tables), and the northbridge. So it is odd for the BIOS to limit the
    addressable memory. It makes no sense to me.

    ​3. With that said, it IS the bios that initially sets values in
    various registers in the chipset. So your hypothesis is conceivable,
    maybe they cut some corners and changed the BIOS to disable \> 4 GB
    memory support. Could have something to do with the (electrical)
    interface to the RAM modules too. This is too low level for me
    though
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    ​4. You could take a look at the specs for the chipset and see if
    you find registers that have to do with this.

    I hope this helps!

52. dan on January 17th, 2009 1:53 am

    Pls i need you to tell me the procedures for memory mapping

53. [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 19th,
    2009 3:03 pm

    @dan: What exactly do you mean?

    Do you need to find out addresses that have been taken by certain
    hardware? Which OS are you using?

    In Linux, take a peek at /proc/iomem and see if that is the sort of
    thing you’re looking for. In Windows, see this excellent post by
    Mark Russinovich:
    [http://blogs.technet.com/markrussinovich/archive/2008/07/21/3092070.aspx](http://blogs.technet.com/markrussinovich/archive/2008/07/21/3092070.aspx)

54. DueptCattydep on January 21st, 2009 5:54 pm

    Nothing seems to be easier than seeing someone whom you can help but
    not helping.\
     I suggest we start giving it a try. Give love to the ones that need
    it.\
     God will appreciate it.

55. Fredrik Viksten on January 26th, 2009 6:30 am

    Hi Gustavo,

    No I’m sorry I do not have them at the moment (they are quite
    expensive ATM). My question was for future-proofing my system.
    Anyway I kept it so sometime in the future I will know I guess.

    So basically what you are saying is that it is the OS that sets up
    the memory map for the system? I will try to find some time to delve
    into some documentation on the matter and report back if I find
    something.

    Cheers!

56. [McGrew Security Blog » Blog Archive » Gustavo Duarte’s Great
    Internals
    Series](http://www.mcgrewsecurity.com/2009/01/27/gustavo-duartes-great-internals-series/)
    on January 27th, 2009 3:22 pm

    [...] Motherboard, Chipsets, and the Memory Map [...]

57. owen on March 23rd, 2009 12:50 pm

    Ulrich Drepper has PCI Express hanging off the southbridge, you have
    it hanging off the northbridge. Do you know which is correct.

    Great article btw!!!

58. [Gustavo Duarte](http://duartes.org/gustavo/blog) on March 23rd,
    2009 6:42 pm

    Owen: thanks. They’re both correct. PCI Express is attached to both,
    but on the northbridge we have dedicated PCI express lanes for the
    graphics card. The best way to be sure is to look up the Intel
    manual for the chipset in question.

59. Jeffrey on April 1st, 2009 1:18 am

    Gustavo, thanks for the excellent post.

    About the memory layout table, I’m confused with several questions:\
     1) Where does this table reside? In system memory or north bridge
    or somewhre?\
     2) Who makes this table? The bios, or linux kernel or someone
    else?\
     3) When is this table produced? power on self test? before or after
    kernel is booted?\
     4) How are those hardwares known to the guy who makes this table?\
     5) For hardware circuit, only bus/slot/chip are meaningful. So,
    this memory layout table is actually the map from physical address
    to bus/slot/chip. Am I right?

60. [Getting Physical With Memory « My
    Site!](http://motherboards.lastdepot.com/?p=7) on May 14th, 2009
    4:40 pm

    [...] of the physical memory range in an Intel computer is mapped to
    devices like hard drives and network cards instead of actual RAM
    memory. This allows drivers to communicate [...]

61. yuhuntero on July 26th, 2009 10:13 pm

    Good article and I really enjoye the pictures.

62. Ashoka on August 6th, 2009 3:42 am

    Thanks a lot to Gustavo, for giving such a good info with basics
    explained\
     in detail. Expect more of this type.

63. mercury on September 14th, 2009 1:47 pm

    That Ulrich ( red hat guy )’s paper was brilliant ! Explained a lot
    !

    Nice stuff
    ![:D](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_biggrin.gif)

64. [x86 / linux boot process | Madbuda](http://blog.madbuda.com/?p=46)
    on November 3rd, 2009 9:33 am

    [...] to the execution of /sbin/init.His first entry lays the
    foundation of the basis of the x86 Intel chipset, memory map, and
    logical motherboard layout. This provides a basic understanding
    about the traditional hardware motherboard [...]

65. [Funktionsweise eines Betriebssystems | duetsch.info - GNU/Linux,
    Open Source, Softwareentwicklung, Methodik und
    Vim.](http://www.duetsch.info/funktionsweise-eines-betriebssystems.html)
    on December 28th, 2009 6:19 am

    [...] Motherboard Chipsets and the Memory Map [...]

66. Yuhong Bao on December 30th, 2009 8:32 pm

    “This is called reclaiming memory and it’s done with help from the
    chipset. ”\
     Note that older chipsets, like the Intel 945 and earlier desktop
    chipsets, do not support this. They only support 32 address lines,
    so there is no A[35:32]\# lines coming out of the chipset, so it is
    disconnected from the CPU.\
     scrAb\_: Yes they did, via PAE, but back then only server chipsets
    actually connected the A[35:32]\# lines needed to address more than
    4GB of RAM. PAE can still be enabled and it would do no harm other
    than degrading performance a little, but it would be pretty useless
    if it wasn’t for NX needing PAE.

67. [morisbecon](http://thepartsgiant.com/memory/ddr-sdram.html) on
    February 9th, 2010 11:49 pm

    Thanks for the nice post.

68. [hangi dil neye
    derlenir?](http://forum.ceviz.net/genel-programlama/91823-hangi-dil-neye-derlenir-4.html#post561136)
    on April 7th, 2010 3:25 pm

    [...] i

69. Lubos Plavucha on June 16th, 2010 10:51 am

    I really don´t understand one thing, even if there was a mention of
    it in this blog – it is memory map configuration by bios.\
     Suppose I want to programm a primitive operating system (in
    protected mode) and I need to know exact memory map in order to get
    access to all the devices and RAM.\
     Is the memory map hardwired in the motherboard or not? If so, then,
    I suppose, I would have to get the specification for the motherboard
    to get the exact memory map since this would be different for
    different motherboards. Said in another words, I would have to
    programm a driver for motherboard or something like this to
    translate addresses to physical ones.\
     But I read here that also BIOS configure the memory map. However, I
    don´t understand how. Does the BIOS only prepare the hardwired
    memory map in some sense or can it also change the memory map? I
    cannot imagine how can be memory map changed programmatically. From
    my beginner´s point of view, it could be done only if there would be
    two physical ways to the same memory place (either RAM or I/O
    device).\
     Say, I want to read a memory location 0×098654. Next, this number
    is placed on the address bus, going out from the CPU. Now, is it
    possible to program to what memory location this signal will go (is
    it programable) or is it hardwired?

70. [Rob Sherratt](http://www.ipvalue.com) on June 22nd, 2010 8:34 am

    Hi Gustavo,

    Would you be interested in doing some (paid for) private consultancy
    work for us? Please send me an email?

    Many thanks,\
     Rob Sherratt

71. Yasha on July 12th, 2010 7:59 pm

    Hi Gustavo,

    I am looking for further reading from you

72. [Samuel Bronson](http://naesten.blogspot.com) on August 20th, 2010
    1:02 pm

    The Intel manuals are mostly an inch or thicker (Volume 1 might be
    slightly thinner). You call that small?

    Also, 32-bit versions of Windows really don’t allow more than 4 GB
    of address space, even with PAE enabled. At least in Vista, there is
    \*code\* to allow it, but it will only actually use the number of
    physical pages given by the “license value” named
    “Kernel-MaxPhysicalPage”, which is set to 0×1000 (meaning 4 GB) on
    all versions that have seen the light of day. See
    [http://www.geoffchappell.com/viewer.htm?doc=notes/windows/license/memory.htm](http://www.geoffchappell.com/viewer.htm?doc=notes/windows/license/memory.htm)
    for details.

    One possible explanation is that Microsoft feared that allowing more
    than 4 GB of address space would run into problems with drivers,
    motherboards, etc. that, for one reason or another, did not work
    correctly with physical addresses \>= 2\^32. (Not an unreasonable
    concern, but \*never\* allowing it seems a bit extreme.) Another
    possibility is that Microsoft hoped or planned to allow this in
    higher-end releases — some kind of Advanced Server or something —
    but that this never materialized. Possibly, they decided that it was
    better not to offer it, to give people more incentive to move to
    64-bit, with the eventual hope that this would allow them to stop
    offering 32-bit kernels to consumers sooner.

    I guess it can’t be related to the need to explain why programs can
    run out of memory when there are still many free gigabytes, since
    32-bit applications will have this problem regardless of whether the
    kernel is 32-bit or 64-bit.

73. [Kernel Boot Process |
    建华的共享空间](http://shaojh.wordpress.com/2009/06/30/kernel-boot-process/)
    on October 8th, 2010 2:16 am

    [...] Posted on June 30, 2009 by shaojh \* Motherboard Chipsets and
    Memory Map\* How Computers Boot Up\* The Kernel Boot Process This
    entry was posted in linux. Bookmark the [...]

74. truc on October 18th, 2010 9:55 am

    Thanks, it helps me!

75. Raphael on October 24th, 2010 7:00 pm

    Parabens mais uma vez gustavo, continue nos brindando com todos
    esses detalhes de funcionamento !! Sou um entusiasta do assunto !
    Obrigado !!

76. [PCWatch Answers](http://answers.pcwatch.com/index.html) on December
    6th, 2010 2:44 am

    also forgot to ask, is the memory map hardwired in motherboard or is
    it prepared when the system boots? also is it configurable through
    BIOS?

77. mariano on December 6th, 2010 5:06 am

    gracias por la leccion seguire en contacto

78. [Confluence: Next Generation Home
    Development](https://redwood.hq.scei.sony.co.jp/confluence/display/NGHDEV/x86)
    on January 11th, 2011 3:30 am

    **x86…**

    Unsorted info about x86 (and PC architecture) CPU feature flags and
    their meanings…

79. Abhijeet Thatte on March 9th, 2011 12:46 pm

    Hi,

    I have a question about bios. When system restarts, it jumps to
    “reset vector handler” which is nothing but bios. Now at what
    address this IVT (interrupt vector table) resides?

    In memory layout for 4GB memory, system bios is shown somewhere
    around 1MB memory space. Does that mean memory controller maps bios
    at this location? If that is the case then is that the address where
    “reset vector handler” is placed?

80. [Daily Dose of Excel » Blog Archive » Inside the
    Box](http://www.dailydoseofexcel.com/archives/2011/03/11/inside-the-box/)
    on March 11th, 2011 10:57 am

    [...] Motherboard Chipsets Memory Map [...]

81. [Now comes the rub. We’re used to thinking of memory only i – View
    All Latest
    Trends](http://viewalltrends.com/now-comes-the-rub-were-used-to-thinking-of-memory-only-i/)
    on August 1st, 2011 10:34 pm

    [...] posted by: GURPURAN Now comes the rub. We’re used to thinking
    of memory only in terms of RAM, the stuff programs read from and
    write to all the time. And indeed most of the memory requests from
    the processor are routed to RAM modules by the northbridge. But not
    all of them. Physical memory addresses are also used for
    communication with assorted devices on the motherboard (this
    communication is called memory-mapped I/O). These devices include
    video cards, most PCI cards (say, a scanner or SCSI card), and also
    the flash memory that stores the BIOS. More info [...]

82. Venky on October 23rd, 2011 9:41 am

    You have done a wonderful job. PCI and Memory map IO example can
    make the article more interesting. Also PC99 and IBM PC reference on
    BIOS can be added.

    Great Stuff.. Linking your website in my bookmarks.

    -Venky

83. loh collins on November 16th, 2011 5:35 am

    thks dis job well done

84. Emil on November 27th, 2011 12:33 pm

    Thanks !\
     Nice and clean post

85. rakhi on December 11th, 2011 6:07 am

    thanx so much i liked ur article…

86. gg on December 21st, 2011 6:35 pm

    Thanks. It was really good.

87. [Linux, Meet The Bus | Computers, Networks, and All That
    Jazz](http://blogs.asghonim.info/wordpress/?p=25) on January 3rd,
    2012 12:23 pm

    [...]
    [http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map](http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map)
    UncategorizedWhat-Is Leave a comment ?2 Comments. [...]

88. Cesar Chavarro on February 7th, 2012 7:10 pm

    Hola Gustavo.

    Felicitaciones por tu excelente blog y por tu interesante manera de
    enseñar.

    Estoy aprendiendo C++ y quisiera poder acceder los puertos y puntos
    especificos de memoria. Tu me puedes por favor decir con que
    programa o como puedo yo obtener el mapa de memoria y de puertos de
    i/o de mi labtop.

    Gracias por tu tiempo y de nuevo felicitaciones.

    Cesar Chavarro\
     St-Bruno, QC, Canada

89. [au commencement il n’y avait rien |
    GCU-Squad!](http://www.gcu-squad.org/2008/07/au-commencement-il-ny-avait-rien/)
    on February 27th, 2012 1:29 am

    [...] bas niveau, avec les électrolutins [...]

90. [【译】主板上的芯片组和内存映射 »
    种子班---SeedClass](http://www.seedclass.com/archives/66) on March
    29th, 2012 9:20 pm

    [...] 文章由 chnedward
    原文来自[http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map](http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map "Linkification: http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map")
    [...]

91. Douglas Blackley on April 13th, 2012 7:25 am

    Morning: The Subscription feed appears to be disabled. Any
    suggestions?

92. [Gustavo Duarte](http://duartes.org/gustavo/blog) on May 4th, 2012
    5:26 am

    @Douglas: fixed. Thanks!

93. jmzc on May 18th, 2012 5:32 pm

    Thanks for your article.

    I’m confused about memory mapping of devices.\
     You say that this mapping doesn’t steal address to virtual memory
    but real memory.\
     But if I’ve got a 32-bit system with 2GB physical RAM, my OS
    reports 2GB to use ( almost all amount of memory ).\
     So, I think that devices use \*addresses of virtual memory\* (4GB,
    in 32-bit systems) . And they use high addresses, like your diagram
    shows in this article.

    So, I think that diagram is really a representation of virtual
    memory , not real memory.\
     I think when you have 4GB physical memory, devices steal virtual
    memory addresses , not physical memory addresses.

    am I wrong ? My English is not very good, so I could write in
    Spanish language, if you wish

    Thanks & regards

94. alfredo on May 29th, 2012 7:47 pm

    tengo una pregunta puede la incompatibilidad de memoria estar
    calentando mucho el chipset de mi mobo? esta muy caliente el
    southbrigde

95. [Teodori Serge](http://teodori.dyndns.org) on June 27th, 2012 11:27
    am

    Very interesting and very well written. I have also developed a
    simple kernel in gas and c++ in elf format and this is very helpful
    for people writing their own kernel

96. suhas on July 6th, 2012 5:42 am

    Wow!! I am thrilled to hear all this stuff.. Many thanks Gustavo for
    carving out a very informative article series..

97. [Madbuda | I make
    stuff…](http://www.madbuda.com/linux/x86-linux-boot-process-2) on
    October 24th, 2012 8:20 am

    [...] first entry lays the foundation of the basis of the x86 Intel
    chipset, memory map, and logical motherboard layout. This provides a
    basic understanding about the traditional hardware motherboard [...]

98. [Operating Systems and related topics | Arun's
    blog](http://oldpapyrus.wordpress.com/2012/11/14/operating-systems-and-related-topics/)
    on December 1st, 2012 8:03 pm

    [...]
    [http://www.nondot.org/sabre/os/articles/](http://www.nondot.org/sabre/os/articles/)
    [http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map/](http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map/)
    [...]

99. Asifiqbalrs on December 13th, 2012 5:00 am

    What can I say? Great article. \*Standing Ovation\*

100. [My Pocket reads (readitlater) « Opposable
    Bits](http://opposablebits.wordpress.com/2012/12/25/my-pocket-reads-readitlater/)
    on December 24th, 2012 11:26 pm

    [...] Motherboard Chipsets and the Memory Map : Gustavo Duarte [...]

101. Paul McDermott on February 22nd, 2013 6:59 pm

    Hi Gustavo\
     Your articles are excellent. They are clear and very well written.
    You should consider writing some books if you have time.\
     Regards\
     Paul McDermott\
     Albury\
     Australia

102. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 27th,
    2013 3:36 pm

    @Paul: thank you for the kinds words. I had to take a detour from
    writing, but I’m back at it now and will start publishing new
    material, which I hope to turn into a book. I really appreciate the
    encouragement. Regards.

103. Russell Maclean on April 2nd, 2013 7:27 am

    Thank you for this excellent article.\
     I’m looking forward to reading the rest of them.

104. Birthwell on April 12th, 2013 3:20 am

    thanks so much .its very good and helpful

105. Tony on April 24th, 2013 10:58 pm

    Fantastic article, Gustavo!. I take my hat off to your brilliance
    and your style of writing. Very much appreciated.

    I am on a quest to develop my own kernel from the ground up. Not
    interested in linux, windows, osx etc… days prior to these systems,
    how did their developers build their very first initial kernel. I
    want to put myself into their shoes and ignore the existence of any
    kernels I can leverage on. Although I have brilliant posts like this
    to guide me
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    .

    From the questions posted from other enlightened readers there has
    been repeated enquiries about memory maps. I am just another number
    added those batch of inquizitive minds… could you please
    explain/confirm if the physical address space in a 32bit system
    (which is 2\^32…correct me here as well please) is really the RAM
    size or is it that RAM is part of the that physical address space.
    The memory map diagram shows RAM being about 3GB of the 4GB and the
    remaining 1GB is used up by other components in the 32bit system.
    Another question that was already asked but to which I didn’t find
    an answer was where the memory map resides. Your article gives me
    the impression that is in the northbridge.

    Your answers will be tremendously valued! Please do keep this
    magnificient post running & ofcourse a book of sorts as suggested by
    another has to be in the works
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    .

106. slow computer on April 25th, 2013 10:51 am

    I have to thank you for the efforts you have put in\
     writing this blog. I really hope to view the same high-grade
    content from you later on as well.\
     In truth, your creative writing abilities has motivated me to get
    my own website now
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)

107. Kathappan on June 18th, 2013 3:13 am

    I have to thank you for your post about memory map.

    Now I am cleared with memory map. I hope you to post again.

108. varun on June 23rd, 2013 10:30 pm

    Hey i wanna ask a thing from you. You wrote\
     “33 pins to transmit the physical memory address (so there are
    2\^33 choices of memory locations) and 64 pins to send or receive
    data (so data is transmitted in a 64-bit data path, or 8-byte
    chunks). This allows the CPU to physically address 64 gigabytes of
    memory (2\^33 locations \* 8 bytes)”.

    I am not able to understand here if i can address only 2\^33 address
    locations then i can access only 16GB of physical address space.
    Data bus only determines the amount of data coming to/from processor
    in a single read or write cycle. Maybe the scenario that u r
    explaining here can fit in segment +offset Architecture of x86.
    Please elaborate.

109. [Reading Virtual Memory |
    ntinternals](http://ntinternals.wordpress.com/2011/03/30/reading-virtual-memory/)
    on June 28th, 2013 4:09 am

    [...]
    [b] [http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map](http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map "Linkification: http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map")
    [...]

110. [Gustavo Duarte](http://duartes.org/gustavo/blog) on June 30th,
    2013 10:59 am

    Hi varun,

    It’s because the reads / writes happen 8 bytes at a time. So the
    “locations” are multiples of 8 bytes. 2\^33 can take on 8 GB
    different values (about 8 billion), times the 8 bytes, total of 64
    GB.

111. [爪 杉 » Best of : Gustavo
    Duarte](http://jarson.asia/2013/12/29/best-of-gustavo-duarte) on
    December 28th, 2013 7:08 pm

    [...]
    [http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map](http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map)
    [http://duartes.org/gustavo/blog/post/how-computers-boot-up](http://duartes.org/gustavo/blog/post/how-computers-boot-up)
    [http://duartes.org/gustavo/blog/post/kernel-boot-process](http://duartes.org/gustavo/blog/post/kernel-boot-process)
    [http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory)
    [http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory](http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory)
    [http://duartes.org/gustavo/blog/post/page-cache-the-affair-between-memory-and-files](http://duartes.org/gustavo/blog/post/page-cache-the-affair-between-memory-and-files)
    [http://duartes.org/gustavo/blog/post/getting-physical-with-memory](http://duartes.org/gustavo/blog/post/getting-physical-with-memory)
    [http://duartes.org/gustavo/blog/post/cpu-rings-privilege-and-protection](http://duartes.org/gustavo/blog/post/cpu-rings-privilege-and-protection)
    [http://duartes.org/gustavo/blog/post/intel-cpu-caches](http://duartes.org/gustavo/blog/post/intel-cpu-caches)
    [...]

112. [Jarson's blog » Best of : Gustavo
    Duarte](http://www.jarson.asia/best-of-gustavo-duarte/) on February
    23rd, 2014 12:44 am

    [...] motherboard-chipsets-memory-map how-computers-boot-up
    kernel-boot-process anatomy-of-a-program-in-memory
    how-the-kernel-manages-your-memory
    page-cache-the-affair-between-memory-and-files
    getting-physical-with-memory cpu-rings-privilege-and-protection
    Caches: a place for concealment and safekeeping [...]
