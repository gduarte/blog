---
layout: page
title: "Comments"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---
**165 Responses to “What Your Computer Does While You Wait”**

1.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on November 30th,
    2008 10:44 pm

    EDIT: updated 3/23/2009

    Instruction and L1/L2 latencies come from Intel’s [Optimization
    Reference
    Manual](http://www.intel.com/products/processor/manuals/).\
     DMI speed is from Intel’s datasheet on the chipset shown in the
    diagram, which you can find
    [here](http://www.intel.com/products/desktop/chipsets/x48/x48-technicaldocuments.htm).\
     Front side bus bandwidth is from Ulrich Drepper’s paper and common
    knowledge of the FSB.

    The hardest bit of info in the diagram is actually the RAM latency.
    I looked at several of Drepper’s experiments to decide on \~250
    cycles. I believe this is a fair number,\
     close to real-world situations, but reality is much more
    complicated than a single value conveys. TLB is ignored as well in
    this post.

    SATA bandwidth from
    [Wikipedia](http://en.wikipedia.org/wiki/Sata#Throughput).

    Hard drive I/O specs from [Storage
    Review](http://www.storagereview.com/WD7500AAKS.sr?page=0%2C1).

    Firewire and USB 2.0 speed:
    [http://www.barefeats.com/usb2.html](http://www.barefeats.com/usb2.html),\

    [http://www.firewire-1394.com/firewire-vs-usb.htm](http://www.firewire-1394.com/firewire-vs-usb.htm)

    USB 1.0:
    [http://www.tomshardware.com/reviews/step,449-7.html](http://www.tomshardware.com/reviews/step,449-7.html)

    It’s hard to find comprehensive information for Ethernet speeds.
    Andre went into detail in a [great
    comment](http://duartes.org/gustavo/blog/post/what-your-computer-does-while-you-wait#comment-14671)
    below on why many of the speeds we see posted online are too slow.
    He also posted results from a netio run for his network. Some slower
    speeds (with a Windows bias, hence hampered by SMB) can be found
    in:\

    [http://www.ezlan.net/net\_speed.html](http://www.ezlan.net/net_speed.html)\
     [http://www.ezlan.net/giga.html](http://www.ezlan.net/giga.html)\

    [http://www.hanselman.com/blog/WiringTheHouseForAHomeNetworkPart5GigabitThroughputAndVista.aspx](http://www.hanselman.com/blog/WiringTheHouseForAHomeNetworkPart5GigabitThroughputAndVista.aspx)

    As per Scott Hanselman’s post,\
     [Jumbo frames](http://en.wikipedia.org/wiki/Jumbo_frame) can make a
    big difference in Gigabit performance, boosting\
     throughput by as much as 100%.

    These bus and network throughput values match up with rules of thumb
    I often see in the trenches. If you know of more thorough
    benchmarks\
     corroborating or contradicting anything, please let me know.
    Thanks!

2.  [Miha](http://www.simail.si) on December 1st, 2008 2:30 am

    @Gustavo: x16 PCie slot has wrong speed, its 500MB/s per lane @ PCIe
    2.0 so x16 would be 8GB/s…

3.  Tim Ring on December 1st, 2008 7:23 am

    Great post Gustavo, keep up the good work!

    The L2 cache can catch you out when working on large data
    structures. I remember when L2 caches were 4MB getting caught out
    scaling images for a texture mapped game. Once the images approached
    4MB in size the performance dropped of a cliff. I know that now the
    GPU does a lot of this scaling and heavy-lifting for you but the
    principle when managing any large structure is the same.

4.  [.NET programmer](http://programming.torensma.net) on December 1st,
    2008 8:25 am

    Very informative, enjoyed reading it! Thanks.

5.  Michael on December 1st, 2008 8:42 am

    I’m jealous of your hypothetical 7500 GB hard drive.

6.  [While You Wait | JoelsBlog.net](http://www.joelsblog.net/?p=3184)
    on December 1st, 2008 8:59 am

    [...] While You Wait Sunday, November 30th, 2008 | Computers, JFI1
    Computers This post takes a look at the speed – latency and
    throughput – of various subsystems. [...]

7.  deadmoo on December 1st, 2008 9:37 am

    It would be interested to compare this to the new Intel X58 chipset.

8.  Przemek Klosowski on December 1st, 2008 9:38 am

    This is a great compilation of memory hierarchy performance numbers.
    One word of caution though—you mix in the numbers for latency and
    bandwidth, which might lead a superficial reader to confuse the
    effect of the two. Bandwidth is the crucial one, because if it’s not
    adequate, there’s nothing you can do.

    Latency, on the other hand, can be remediated: even though bad
    latency can kill a good bandwidth, caching/prefetching or
    amortization over large transfers can mask it out. Unfortunately,
    those techniques assume specific\
     data access patterns, and if those assumptions fail, latency
    becomes a problem. This leads to a circular trap in system design:
    the access pattern\
     has to be well characterized for a successful latency remediation,
    so that\
     only programs with ‘conforming’ access pattern run well on this
    system. Paradoxically, the better-optimized systems penalize weird
    and non-standard access patterns even more.

    Gigabit Ethernet is a good example: 1 Gbps is a great peak
    bandwidth, but the actual practical bandwidth is much lower, due to
    relatively short packets (you quote 30 MBps instead of expected 100
    megabytes/sec). The actual number for a stupid protocol (e.g.
    synchronous exchange of short packets) would be much smaller and
    probably not much faster than 100baseT, because it would have been
    dominated by packet send/receive latency.

9.  [Kevin](http://kevinbeason.com/) on December 1st, 2008 9:41 am

    Great post. Think I found a typo:

    “Now, the front side bus bandwidth, \~10GB/s, actually looks decent.
    At that rate, you could read all of 8GB of system memory under 10
    seconds or read 100 bytes in 10ns.”

    Shouldn’t that only take 1 second (or less) to read all of main
    memory, not 10s (in theory)?

10. Magnus on December 1st, 2008 10:03 am

    Excellent article, thank you!

    I’m curious, what software did you use to create the graphics in the
    article?

11. [bootcamp](http://www.bootcampmedia.com) on December 1st, 2008 10:03
    am

    great article – very interesting.

    i have the same chip in my home pc – good to know what it’s up to
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

12. [Tony Landis](http://www.tonylandis.com) on December 1st, 2008 10:13
    am

    Thanks, I really enjoyed this article

13. John Collins on December 1st, 2008 10:30 am

    Wow, totally fascinating article indeed. Well done.

    jess

14. [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 1st,
    2008 10:56 am

    Thank you all for the feedback!
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    @Miha: Thank you, will fix the diagram.

    @Michael: I wish. hahah. Fixed.

    @Przemek: that was an interesting point. Good material for another
    post
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    @Kevin: yep, typo indeed, thanks!

    Also, I think I got the amount of L1 cache wrong, will fix that too.

15. saurabh on December 1st, 2008 11:30 am

    Excellent article, thank you very much. What software did you use
    for the graphics? (Magnus has also asked this).

16. [Keith](http://www.cthreepo.com) on December 1st, 2008 12:19 pm

    Light travels 11.78 inches in a nanosecond.

17. [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 1st,
    2008 12:32 pm

    @Magnus, @saurabh: Thanks for the feedback. The diagrams are all
    made in Visio 2007.

    @Keith: but we have 3 cycles per nanosecond, so 11.78/3 \~= 4.

18. [Deepak](http://peerlessdeepak.wordpress.com) on December 1st, 2008
    12:46 pm

    Wonderful article. I love all the pages in this site!

19. [b](http://berniepallek.ca/) on December 1st, 2008 1:14 pm

    Nice post! Good diagrams. And finally, a clear illustration of why
    optimization is the LAST thing most developers should worry about,
    as long as bug-infested software is still the norm.

20. Toby on December 1st, 2008 2:22 pm

    Great post! Thanks!

21. [laridari » Blog Archive » Was unser Computer
    macht…](http://www.laridari.de/technik/2008/12/was-unser-computer-macht.html)
    on December 1st, 2008 3:05 pm

    [...] …während wir warten: [...]

22. Republicans 4 Jesus on December 1st, 2008 3:43 pm

    WHAT A WASTE OF TIME AND INTERNET SPACE. WHY NOT REPORT ON THE GOOD
    THAT OUR TROOPS ARE DOING IN IRAQ? WHERE ARE THE GOOD STORIES?? OUR
    FREEDOM FIGHTERS HAVE OCCOMPLISHED SO MUCH IN THE LAST FEW YEARS,
    AND THE LIBERAL INTERNET IGNORES THEM, JUST LIKE THEY IGNORE GOD AND
    THE TEN COMMANDMENTS!!!

    IF YOU MUST HATE THE TROOPS FROM YOUR LIBERAL IDEOLOGY, WHY NOT AT
    LEAST TALK ABOUT JESUS? I SAW NO REFERENCES TO JESUS ON YOUR
    WEBSITE!! WHY NO BIBLE PASSAGES AT LEAST?? THESE MEN ARE DYING FOR
    YOUR FREEDOM TO SIT AROUND AND TYPE USELESS CRAP, AND ALL YOU CAN DO
    IS DEFICATE ON THEIR IMAGE AND THE SAVIOR FOR WHOM THEY ARE WORKING.

    YOU ARE JUST ANOTHER LIBERAL TERRORIST. HOPEFULLY THIS ECONOMY WILL
    CLEAN UP THE INTERNET AND GET RID OF WEBSITES LIKE THIS. ENJOY
    HOMELESSNESS, APOSTATE.

23. Andrew on December 1st, 2008 3:44 pm

    Thanks for a very interesting article.

24. Jason on December 1st, 2008 3:47 pm

    To be consistent, the 1Gbit ethernet should have \~100MB/sec next to
    it — the rest of the speeds and bandwidth listed are theoretical
    maxes, whereas the linked article provides the throughput for a
    particular protocol (tcp/samba) and configuration.

25. [links for 2008-12-01 |
    hxf148](http://www.hxf148.com/2008/12/01/links-for-2008-12-01/) on
    December 1st, 2008 4:10 pm

    [...] What Your Computer Does While You Wait : Gustavo Duarte [...]

26. Gene on December 1st, 2008 4:33 pm

    Great article. Now I know why my external USB hard drives and wired
    ethernet network drives were so slow. Maybe you could add eSATA the
    next go around.

27. lrbell on December 1st, 2008 4:42 pm

    Gustavo,QUE BUENO!\
     Well done and expect the criticism. Action will always trump
    knowledge,ans you have both.

    This will help my boardroom analogies for the not so technical purse
    strings.

    L

28. lrbell on December 1st, 2008 4:44 pm

    maybe pencil in what the new fast usb 3.0 standard would mean?

29. Andrew on December 1st, 2008 6:27 pm

    What a wonderful post — you are a great teacher. Thanks for posting
    this! I loved “roam the earth”.

30. [ben](http://www.gnaa.us) on December 1st, 2008 6:49 pm

    rofl @ \#22

31. [deal with the issues «
    …](http://crashamandicoot.wordpress.com/2008/12/02/deal-with-the-issues/)
    on December 1st, 2008 6:53 pm

    [...] deal with the issues what your computer does while you wait
    [...]

32. [Tom](http://mbilf.com) on December 1st, 2008 7:01 pm

    I stopped reading when you said this: “It’s worth keeping this in
    mind when you’re thinking of optimization – instructions are
    comically cheap to execute nowadays.”

    That’s so Java School ignorant.

33. [McColley.net » Blog Archive » What Your Computer’s Doing While You
    Wait
    [Optimization]](http://mccolley.net/what-your-computers-doing-while-you-wait-optimization/)
    on December 1st, 2008 7:01 pm

    [...] 1st, 2008 @ 6:00 pm | Author: admin Software developer Gustavo
    Duarte explains exactly what your computer does while you wait, in a
    thorough, technical answer to the question “Why the hell is my
    computer taking so long [...]

34. [Que hace su computadora mientras usted espera «
    HiperEidon](http://alefalletti.wordpress.com/2008/12/02/que-hace-su-computadora-mientras-usted-espera/)
    on December 1st, 2008 7:19 pm

    [...] What Your Computer Does While You Wait : Gustavo Duarte
    Blogged with the Flock Browser [...]

35. [Sniffy's News Corner (December 1st) | Learn How to Build a High
    Performance
    PC](http://www.williamjavonrice.com/high-performance-pc/2008/12/01/sniffys-news-corner-december-1st/)
    on December 1st, 2008 7:46 pm

    [...] What Your Computer Does While You Wait [...]

36. Shane McGuire on December 1st, 2008 7:49 pm

    \#22 WTF???

37. [Anton Olsen.com » Blog Archive » Bookmarks for December
    1st](http://antonolsen.com/2008/12/01/bookmarks-for-december-1st/)
    on December 1st, 2008 8:00 pm

    [...] What Your Computer Does While You Wait : Gustavo DuarteThe
    first thing that jumps out is how absurdly fast our processors are.
    Most simple instructions on the Core 2 take one clock cycle to
    execute, hence a third of a nanosecond at 3.0Ghz. For reference,
    light only travels \~4 inches (10 cm) in the time taken by a clock
    cycle. It’s worth keeping this in mind when you’re thinking of
    optimization – instructions are comically cheap to execute nowadays.
    [...]

38. [Jay](http://www.blaszta.com) on December 1st, 2008 8:17 pm

    Great article!

    Kudos from Indonesia!

39. [Internet news What Your Computer’s Doing While You Wait
    [Optimization] |
    82123](http://www.82123.net/internet-news-what-your-computers-doing-while-you-wait-optimization)
    on December 1st, 2008 8:31 pm

    [...] developer Gustavo Duarte explains exactly what your computer
    does while you wait, in a thorough, technical answer to the question
    “Why the hell is my computer taking so long [...]

40. [SirPwn4g3](http://sirpwn4g3.blogspot.com) on December 1st, 2008
    8:43 pm

    Great article! I have the same processor overclocked to 3.8GHz on
    air, not a big boost, but a little bit helps, can’t remember my RAM
    speeds, I think my RAM latency is 5-5-5-15. Nice to know what the
    little buggers up to.

    Where the heck did \#22 come from? That’s just psychotic.

41. [Curious Cat Science and Engineering Blog » von Neumann Architecture
    and
    Bottleneck](http://engineering.curiouscatblog.net/2008/12/01/von-neumann-architecture-and-bottleneck/)
    on December 1st, 2008 8:46 pm

    [...] how a computer actually works. This post gives some details on
    the inner workings of your computer. What Your Computer Does While
    You Wait People refer to the bottleneck between CPU and memory as
    the von Neumann bottleneck. Now, the front [...]

42. [Curious Cat Science and Engineering Blog » von Neumann Architecture
    and
    Bottleneck](http://engineering.curiouscatblog.net/2008/12/01/von-neumann-architecture-and-bottleneck/)
    on December 1st, 2008 8:46 pm

    [...] how a computer actually works. This post gives some details on
    the inner workings of your computer. What Your Computer Does While
    You Wait People refer to the bottleneck between CPU and memory as
    the von Neumann bottleneck. Now, the front [...]

43. zenium on December 1st, 2008 8:48 pm

    The comment

    “… but in reality their contribution is allowing a disk to queue up
    writes and then perform them in one bunch, thereby allowing the disk
    to plan the order of the writes in a way that – surprise – minimizes
    seeks. Reads can also be grouped in this way for performance, and
    both the OS and the drive firmware engage in these optimizations.”

    is misleading. Actually Native Command Queuing (NCQ) (the
    re-ordering to minimize seeks) is only available on certain hard
    drives (some SATA, SAS and SCSI). Also, NCQ improves performance
    when the disk requests are some what random. For example multiple
    users accessing different files on a network fileshare. It does not
    improve performance on desktop system that is running only one or
    two applications. In fact it might slow things down a bit because
    applications may be delayed by the optimization that minimizes seek
    times at the expensive of getting data to the application.

44. BB on December 1st, 2008 9:14 pm

    \> Residential bandwidth still lags behind that of sustained\
     \> hard drive reads, but the ‘network is the computer’ in a\
     \> pretty literal sense now. What happens when the Internet\
     \> is faster than a hard drive?

    Perhaps not on a home PC, but in any datacenter worth the name,
    roundtrip to the next rack over is already faster than hitting disk.
    With lots of spindles (ie, database hosts) you can still get greater
    sustained throughput locally, but for very latency-sensitive
    applications it’s at the point now that the cheapest way to get 90
    gigs of low-latency storage is a three hosts with 32G of RAM running
    memcached.

    I don’t imagine it will be long before you can run applications out
    of S3 as fast as off your local disk. “Cloud computing” is a stupid
    term, but that doesn’t mean the underlying idea is wrong.

    - BB

45. [Army of Principles » Your Computer on
    Wait](http://www.armyofprinciples.net/bishop/?p=165) on December
    1st, 2008 9:39 pm

    [...] Gustavo Duarte has a great chart illustrating what your
    computer does when it invariably hangs, waits, or slows [...]

46. Peter on December 1st, 2008 9:47 pm

    I think someone forgot about spyware.

47. [links for 2008-12-01 « My
    Weblog](http://greencrab.wordpress.com/2008/12/01/links-for-2008-12-01/)
    on December 1st, 2008 10:04 pm

    [...] What Your Computer Does While You Wait : Gustavo Duarte (tags:
    hardware optimization geek) [...]

48. Dan on December 1st, 2008 10:35 pm

    I have to concur about the Gigabit Ethernet speeds–I have little
    difficulty achieving 90MB/s sustained with my NAS over HTTP. Most
    other protocols are somewhat slower, and I have done slightly better
    in my UDP experiments, but 90MB/s is a normal speed for actual file
    transfers for me.

49. [[root@EGA]\# » Blog Archive » links -
    20081201](http://ericalexander.org/wordpress/2008/12/01/links-20081201/)
    on December 1st, 2008 11:33 pm

    [...] from there. Oh, and HE’S NEVER SLEPT. Thirty Vehicular You’re
    Doing It Wrong” Moments (PICS)” What your computer does while you
    wait Now there’s a lad with a bright future! [...]

50. Billamama on December 2nd, 2008 12:02 am

    Nice article. Can we get more inputs on how HyperTransport / Intel
    QPI would fit into the picture.

51. [Mike](http://mountainbikerak.blogspot.com) on December 2nd, 2008
    12:11 am

    This was a good post, thanks for the good brush-up on computer
    architecture. Something I would really like to see though is “What
    does Windows do while you’re watching the hourglass?”

    For instance, you right click on an icon, and it takes 2 seconds for
    the context menu to pop up. Or you click on the control panel menu,
    and it takes 10 seconds for the menu to come out. I’m sure that it’s
    timing out trying to access a network resource or something… but it
    would be nice to know
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

52. [DHCPme » Blog Archive » What Your Computer’s Doing While You Wait
    [Optimization]](http://blog.dhcpme.com/?p=422) on December 2nd, 2008
    12:32 am

    [...] developer Gustavo Duarte explains exactly what your computer
    does while you wait, in a thorough, technical answer to the question
    “Why the hell is my computer taking so long [...]

53. Nick on December 2nd, 2008 12:36 am

    Hi!

    First off, I love the post. Hours/week of studying in Operating
    Systems and Computer Architecture courses paid off!

    I would like to make a poster of the combined north/south bridge
    diagram (for personal, non-commercial use). Would you mind if I did
    so?

54. [What your computer does while you wait (and how to make it go
    faster) : Nick’s Blog](http://nickglorioso.com/blog/archives/64) on
    December 2nd, 2008 12:37 am

    [...]
    [http://duartes.org/gustavo/blog/post/what-your-computer-does-while-you-wait](http://duartes.org/gustavo/blog/post/what-your-computer-does-while-you-wait)
    [...]

55. [links for 2008-12-01 « Stand on the shoulders of
    giants](http://mamatoshi.wordpress.com/2008/12/02/links-for-2008-12-01/)
    on December 2nd, 2008 1:01 am

    [...] What Your Computer Does While You Wait : Gustavo Duarte (tags:
    interesting computer statistics hardware) [...]

56. kryzstoff on December 2nd, 2008 2:24 am

    \#22 : neocon-religio-freak — Christ, that was hilarious!!

    However, you really need to go back to grade school and ‘lern how
    too spel’, or clean all of the ‘defecate’ out of your tiny brain.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

57. kryzstoff on December 2nd, 2008 2:30 am

    Gustavo;

    that was the most interesting article I’ve read all day — certainly
    puts things into perspective. I can only suggest you might adjust
    the diagram to show bandwidth in relative, graphical terms —
    although I concede that might prove difficult (eg. 3 seconds : 15
    months) may distort the scale.

58. [What Your Computer Does While You Wait | Thavarajah
    Sabanathan](http://thavarajah.dk/what-your-computer-does-while-you-wait/)
    on December 2nd, 2008 2:33 am

    [...]
    [http://duartes.org/gustavo/blog/post/what-your-computer-does-while-you-wait](http://duartes.org/gustavo/blog/post/what-your-computer-does-while-you-wait)
    « 3connect won’t open? [...]

59. [What your computer does while you wait |
    Nuanda.com](http://nuanda.com/?p=77) on December 2nd, 2008 2:36 am

    [...] by damagednoob to programming [link] [150 comments]
    SHARETHIS.addEntry({ title: “What your computer does while you
    wait”, url: [...]

60. [James Adams](http://www.knowncolor.com) on December 2nd, 2008 3:04
    am

    Great post, really informative. Now to get through the “What every
    programmer should know about memory” doc.

61. [Done My Arm In ::
    Streakfury](http://www.streakfury.com/ramblings/done-my-arm-in/2008/12/02/)
    on December 2nd, 2008 5:30 am

    [...] came across a good diagram and article explaining why a
    computer runs as quickly (or as slowly) as it does. The article
    points out that various links [...]

62. Jesper on December 2nd, 2008 5:50 am

    Thanks Gustavo for this very informative article!

    I also liked the document “What Every Programmer Should Know about
    Memory” – that’s a very thorough paper!

63. [And One Week Later… : Zen Bones](http://zenbones.org/?p=138) on
    December 2nd, 2008 6:17 am

    [...] article, What Your Computer Does While You Wait, ganders a
    very interesting look at how ass-twitching-annoyingly long it takes
    for your CPU to [...]

64. [Τι κάνει ο Η/Υ όσο περιμένετε; «
    mathpoet](http://mathpoet.wordpress.com/2008/12/02/%cf%84%ce%b9-%ce%ba%ce%ac%ce%bd%ce%b5%ce%b9-%ce%bf-%ce%b7%cf%85-%cf%8c%cf%83%ce%bf-%cf%80%ce%b5%cf%81%ce%b9%ce%bc%ce%ad%ce%bd%ce%b5%cf%84%ce%b5/)
    on December 2nd, 2008 8:22 am

    [...] Ο κύριος Gustavo Duarte, έγραψε ένα πολύ ενδιαφέρον άρθρο για
    την αρχιτεκτονική των σύγχρονων (intel core 2 duo) [...]

65. [Querystring » What Your Computer’s Doing While You
    Wait](http://querystring.net/?p=1221) on December 2nd, 2008 10:45 am

    [...] developer Gustavo Duarte explains exactly what your computer
    does while you wait, in a thorough, technical answer to the question
    “Why the hell is my computer taking so long [...]

66. Filipe De Sousa on December 2nd, 2008 10:51 am

    This was pretty interesting, I might combine the images, and make a
    little poster just for myself, I’ve always been interested in such
    things.

    Post \#22 was really just unnecesarry, I feel. What is really a
    waste of time, space and money is having to host that stupid
    message. Jeez.

67. Joe on December 2nd, 2008 11:00 am

    I like this line, “A cool place to read about the impact of seeks is
    the paper where a couple of Stanford grad students describe the
    Anatomy of a Large-Scale Hypertextual Web Search Engine”. Find out
    who those grads are
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

68. [Why your computer makes you
    wait](http://kristinhoppe.com/index.php/2008/12/02/why-your-computer-makes-you-wait/)
    on December 2nd, 2008 12:31 pm

    [...] Hint: it’s not your processor. [...]

69. Greg P on December 2nd, 2008 1:14 pm

    Thanks for the article. The diagrams are great!

70. [McColley.net » Blog Archive » What Your Computer’s Doing While You
    Wait
    [Optimization]](http://mccolley.net/what-your-computers-doing-while-you-wait-optimization-2/)
    on December 2nd, 2008 2:32 pm

    [...] 2nd, 2008 @ 1:30 pm | Author: admin Software developer Gustavo
    Duarte explains exactly what your computer does while you wait, in a
    thorough, technical answer to the question “Why the hell is my
    computer taking so long [...]

71. [Quasi.dot](http://www.afhome.org/2008/12/02/what-your-computer-does-while-you-wait-gustavo-duarte/)
    on December 2nd, 2008 3:29 pm

    [...] What Your Computer Does While You Wait : Gustavo Duarte [...]

72. [Matt’s Cuppa Diigo Post 12/03/2008 | Matt's
    Cuppa](http://www.mattscuppa.com/2008/12/03/matts-cuppa-diigo-post-12032008/)
    on December 2nd, 2008 6:31 pm

    [...] What Your Computer Does While You Wait : Gustavo Duarte [...]

73. [Matt’s Daily Diigo Post 12/03/2008 « Matt’s
    Cuppa](http://mattscuppa.wordpress.com/2008/12/02/matts-daily-diigo-post-12032008/)
    on December 2nd, 2008 6:35 pm

    [...] What Your Computer Does While You Wait : Gustavo Duarte [...]

74. [What Your Computer’s Doing While You Wait [Optimization] | The tech
    blog](http://www.techfigure.com/2008/12/03/what-your-computers-doing-while-you-wait-optimization/)
    on December 2nd, 2008 8:00 pm

    [...] developer Gustavo Duarte explains exactly what your computer
    does while you wait, in a thorough, technical answer to the question
    “Why the hell is my computer taking so long [...]

75. [Computer Magic - Quality Custom Software
    Solutions](http://www.cmagic.biz/wordpress/2008/12/03/whats-happening-inside-your-computer/)
    on December 3rd, 2008 10:23 am

    [...]
    [http://duartes.org/gustavo/blog/post/what-your-computer-does-while-you-wait](http://duartes.org/gustavo/blog/post/what-your-computer-does-while-you-wait)
    [...]

76. [Carlos Martins](http://abertoatedemadrugada.com) on December 3rd,
    2008 10:38 am

    Very cool and informative article. Like you said, it’s nice to put
    thing into perspectiva.

    I remember talking about the same stuff many years ago, as I tried
    to explain to friends why – when the time came for CPUs to be fast
    enough, it would be faster to write compressed data to hard drives
    than uncompressed data. (Assuming the CPU would be fast enough to
    compress the data making it smaller so it would spend less time
    accessing the “slow” hard drive.)

    And the same thing applies to the internet, as you said.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

77. Leon Flamick on December 3rd, 2008 12:20 pm

    My computer just says don’t wait…later!

78. [links for 2008-12-03 « LAN b4
    Time](http://cdavis1962.wordpress.com/2008/12/04/links-for-2008-12-03/)
    on December 3rd, 2008 6:33 pm

    [...] What Your Computer Does While You Wait : Gustavo Duarte (tags:
    computer wait interesting) [...]

79. Sithdartha on December 3rd, 2008 8:04 pm

    What font did you use for your diagrams? Thanks.

80. Praetorian on December 3rd, 2008 9:09 pm

    Thank you for the informative article. Added it to my wall in my
    office. Also to all the relevant persons leaving comments, please
    stop feeding the troll. Thanks again for a great article!

81. Bill Broadley on December 3rd, 2008 10:13 pm

    First I’d suggest labeling every number with Peak or observed,
    there’s a large difference. I’d also suggest any time you mention
    latency or bandwidth, that you mention the complimentary value as
    well. So if you mention 83ns of observed latency, mention both the
    observed bandwidth and the peak bandwidth (1333 MHz \* 128
    bits)=20.8GB/sec. For devices where random is significantly
    different than sequential access I’d suggest mentioning both
    numbers. So sequential and random for memory, and sequential and
    random for disk.

    The throughput of 1 instruction per cycle is particularly bad, it
    can vary significantly higher and hugely lower based on what you are
    doing. Maybe mention the peak, and then the issue rate for a
    particular workload or benchmark?

    Bandwidth would be interesting and useful for the caches.

    FSB and ram isn’t the same thing. They often run at different
    speeds, and of course the mentioned DDR is connected to the north
    bridge not the FSB. So remove DDR3 from the FSB description.

    For a real world memory bandwidth number I’d suggest McCalpin’s
    stream benchmark (ask google).

    The PCI-e numbers you quote are for version 2.0, probably worth
    mentioning that. The usual PCI-e is 1/2 as fast.

    If you are going to mention 83ns of memory latency, I’d mention the
    bandwidth as well (see stream above).

    The disk again you should mention peak (from the specification for
    the drive) and observed. Keep in mind that reading say 1GB from a
    disk will vary often by a factor of 2 based on where you read the
    file. I bought a cheap 320GB disk drive gets 50MB/sec or so on the
    inside of the disk, and 115MB/sec on the outside.

    GIG-e easily manages 90+ MB/sec, without Jumbo frames, of course
    that assumes an OS that does networking reasonably well. Linux does
    as do many others, you just have to be careful not to be disk
    limited.

    If you need help collecting some of these numbers let me know.

    Of course a related diagram for the Core i7 would be very
    interesting as well.

82. [Daily Digest for 2008-12-03 | Pedro
    Trindade](http://pedrotrindade.com/2008/12/03/daily-digest-for-2008-12-03/)
    on December 4th, 2008 2:11 am

    [...] What Your Computer Does While You Wait : Gustavo Duarte [...]

83. [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 4th,
    2008 2:33 am

    Thank you all very much for the feedback and the comments.

    There are tons of comments bringing up good points. I’m going to
    post some replies tomorrow (Thursday) and do some updates on the
    post reflecting them.

    cheers

84. [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 4th,
    2008 3:04 am

    @b: Absolutely. 99% of the time you want the cleanest, simplest code
    you can possible write. In a few hotspots, which you discover by
    PROFILING the code rather than guessing, you optimize for
    performance if it’s really called for.

    @Jason: When I looked for benchmarks, I found a lot of folks capping
    out at 30MB/s, 40MB/s for gigabit ethernet. Certainly though OS,
    protocol, and network gear makes a difference. Do you have some
    benchmarks handy for gigabit ethernet?

    @lrbell: thanks for the suggestion. I’ll keep USB 3.0 in mind when
    it’s time to update this thing.

    @SirPwn4g3: that’s cool, I have not been overclocking lately, but I
    used to enjoy it a ton. Just no time
    ![:(](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_sad.gif)

    @zenium: this conflicts with the knowledge I have regarding the
    buffering behavior of disks. I may well be wrong, but I’d appreciate
    if you could point me to some resources covering this stuff.

    When it comes to apps being delayed, true if the OS is doing it,
    certainly there is room for different I/O scheduling strategies
    depending on usage, which is what the Linux kernel offers. But this
    does not apply to the write back cache since the disk accepts the
    writes immediately and then proceeds to do them in a seek-minimizing
    way.

    @BB: yep, totally agreed. That’s why I said residential there, in a
    data center or even LAN there are a lot of interesting
    possibilities. I am into memcached and other RAM solutions as well.

    @Dan: I’m going to mention this in the post. Do you have any idea of
    how average throughputs work out? Most of the benchmarks I found
    were well below 90MB/s. I’d love more benchmarks on this.

    @Billamama: thanks for the suggestion. I’ll queue this up in the
    !ideas.txt here
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    @Mike: you might want to try some Sysinternals tools (now Microsoft
    tools since they were bought out). They shed light into a look of
    questions like this for Windows.

    @Nick: totally ok with me. I have however posted a combined diagram,
    which I linked to in the last sentence of the article. Feel free to
    use my materials, I appreciate a link back though or mention of
    where it came from.

    @kryzstoff: HAH, funny you should mention this
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    I’m a Tufte fan and I had all sorts of fancy plans for the diagrams,
    for example I had thought of:

    ​1. Making widths proportional to throughput. Maybe lengths.\
     2. Making the DISTANCES proportional to latency.

    Given the brutal order-of-magnitude differences I experimented with
    a log scale and so on. But in the end, it looked like crap hahah and
    I don’t think it conveyed much
    ![:P](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_razz.gif)
    So I went for simple simple. I’m sure a more talented person could
    come up with a way to make it work though.

    @Filipe: hey, check the last paragraph, I have a link to the
    combined image
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    @Carlos: exactly, compression on the disk is definitely an
    interesting side effect of all this stuff.

    @Sithdartha: It’s Consolas 9pt in Visio 2007. I also set Visio to
    “Higher quality text display” under Tools \> Options \> View.

    @Bill: thank you for the suggestions. You make a number of good
    points, but I need to work some of the information in a way that
    still keeps the diagrams simple and readable. There are tradeoffs
    involved, some of which pertain to the target audience and the
    appropriate level of detail. I appreciate the offer for help, I may
    write you with a couple of question when I find some time to work on
    the blog.

    Again, thanks everybody for all the kind comments and feedback. It’s
    great to be able to help out however minimally.

    Take care.

85. [KristofU](http://qbziz.wordpress.com) on December 4th, 2008 6:56 am

    Great article.\
     I just want to part with these wise words :

    Bandwith you can buy, latency is defined by nature.

86. [kevin](http://homeninja.com) on December 4th, 2008 12:43 pm

    Very informative, enjoyed reading it! Thanks

87. Fabryz on December 4th, 2008 1:09 pm

    “It’s fascinating for me to look at all these numbers together and
    see how far we’ve come.”

    That’s the same thing i thought =)\
     And the best has yet to come

88. Do what I can but I'm only one man on December 4th, 2008 4:00 pm

    @ 22,

    You wouldn’t be able to use your computer to spread your thoughts if
    it weren’t for computer experts such as Mr. Duarte. You really
    should apologize for your overly passionate rant above.

    Please try to look at the bigger picture in like, I think you might
    enjoy yourself if you tone down the emphasize on Jesus…You know, God
    already knows you appreciate him, so there really is no need to
    spread your message that way. Good luck in life bud.

    Ohh, and I don’t think I want to join your organization there,
    Republicans for Jesus; I hope the other members aren’t as over the
    top as you are…

    Seriously, good luck.

89. [Rajorshi](http://www.rajorshi.net/blog) on December 7th, 2008 7:35
    am

    Very informative and well written, thanks!

90. [Gadget Mania Gadgets and Gadget News » Blog Archive » What Your
    Computer Does While You
    Wait](http://gadgetmania.com/2008/12/what-your-computer-does-while-you-wait/)
    on December 7th, 2008 8:48 am

    [...] News link: here [...]

91. [Alex Railean](http://railean.net/) on December 10th, 2008 8:15 am

    My patient waiting for a new article was finally rewarded, thanks
    Gustavo!

    I would like to comment the analogies, they don’t feel right to me.
    When you look at the numbers, everything fits, but the \_perceived\_
    delay is much longer; especially with the “1 year 3 months” case.

    I interpreted that as “one year and 3 months of standing still”, but
    then I audited my thought and remembered that in practice the CPU is
    doing other things (for another process) while the HDD fetches a new
    chunk of data.

    In other words, this can mislead some people (ex: journalists who
    “translate” articles like these for the masses); for them it is
    better to convert everything to Libraries of Congress, just to be
    sure. Otherwise modern systems will be perceived as horribly
    inefficient.

92. [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 12th,
    2008 12:53 am

    Hi Alex,

    Thanks a ton for the feedback.

    That’s a good point you bring up. In a server environment with lots
    of tasks going on, it is true that you might have workloads that
    keep the CPU busy by a combination of multiple processes / decent
    balance between I/O and CPU usage.

    In fact, top notch data centers always aim for that, to come up with
    workloads that keep the processor busy, since efficiency/money and
    efficiency/electricity is a big concern and idle hardware is money
    down the drain.

    However, I often see servers where what you describe IS the case –
    the CPUs are always idling whereas the disks are very busy.
    Sometimes the server is dog slow – due to I/O – while the CPU is
    barely breaking 25% usage (one core out of four).

    So I think modern systems \_indeed\_ became horribly inefficient.
    This million-cycle business is terrible. I think that’s why Jeremy
    Zawodny [said](http://jeremy.zawodny.com/linkblog/) the post “made
    him sad”.

    We need to improve this. Maybe SSDs, maybe something else, but
    something’s gotta give. CPU stalls due to disk are now catastrophic.

    Nice to see you again
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

93. [Wanderer](http://strongchutney.blogger.com) on December 13th, 2008
    10:25 am

    Great Post Gustavo! The diagrams are great and the analogies help
    non-technical people get a grasp of what is going on at the time
    scales that matter to a Computer instruction cycle.

    Any thoughts on updating the post once the newer architectures from
    Intel such as the HyperConnect for the i7 become more popular?

94. [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 14th,
    2008 12:32 am

    @Wanderer: thanks
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    Yep, a couple of people brought up the i7, I hope to write something
    on it

95. [Performance is a Science : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/performance-is-a-science)
    on December 18th, 2008 1:24 am

    [...] fed to the CPU, where optimizations such as branch prediction,
    memory prefetching and caching have drastic performance
    implications. What’s worse, much of the above can and does change
    between different versions of compilers, [...]

96. [O que o computador faz enquanto esperamos «
    mb|Weblog](http://mbweblogv2.wordpress.com/2008/12/22/computador-faz-enquanto-esperamos/)
    on December 22nd, 2008 7:37 am

    [...] blogger Gustavo Duarte oferece-nos uma excelente resposta a
    esta questão, no seu post “What Your Computer Does While You Wait“
    Filed under: Informática [...]

97. [O que ele faz enquanto esperamos «
    mb|Weblog](http://mbweblogv2.wordpress.com/2008/12/22/enquanto-esperamos/)
    on December 22nd, 2008 7:38 am

    [...] blogger Gustavo Duarte oferece-nos uma excelente resposta a
    esta questão, no seu post “What Your Computer Does While You Wait“.
    Filed under: Informática [...]

98. [Julien Couvreur](http://blog.monstuff.com) on December 24th, 2008
    10:04 am

    Good article.\
     It matches other things I’ve been reading. This pyramid of latency
    and the corresponding trends will have a profound impact on how we
    program.

    Here are some more pointers on recent computer trends:
    [http://blog.monstuff.com/archives/000333.html](http://blog.monstuff.com/archives/000333.html)

    In particular, one of the direct consequences on the numbers you
    present above is that any large data processing needs to read from
    the disk sequentially (no seeks), like tapes. That’s the design
    behind Google MapReduce, Hadoop and Cosmos/Dryad:
    [http://www.lexemetech.com/2008/03/disks-have-become-tapes.html](http://www.lexemetech.com/2008/03/disks-have-become-tapes.html)

99. Sushil Mayengbam on January 9th, 2009 11:34 am

    Hi,\
     A very good article. The analogy given in comparing speed among the
    various memory architecture layers is superb. The article discusses
    in taking the latest trend in Intel technology – Dual core. This
    logic is quite commendable. Overall, I believe,every reader might
    have enjoyed this article!

100. [maniacprovost](http://ethermind.blogspot.com/) on January 24th,
    2009 9:44 pm

    .. \#22 was obviously bad satire..

    Anyway, good post.

101. Amit on February 1st, 2009 9:35 am

    Great analogies, I was having to come up with a few weird ones of my
    own when people asked me what possible diference could an extra 8MB
    cache on the HDD make. Now I just rattle off the paper example used
    by you in the article. Thanks again.

102. [Page Cache, the Affair Between Memory and Files : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/page-cache-the-affair-between-memory-and-files)
    on February 11th, 2009 12:02 am

    [...] by the OS when it comes to files. The first one is the
    mind-blowing slowness of hard drives, and disk seeks in particular,
    relative to memory. The second is the need to load file contents in
    physical memory once and share [...]

103. [Ya-tou & me » Blog Archive » Page Cache, the Affair Between Memory
    and Files](http://jiang.eu.org/blog/?p=308) on February 19th, 2009
    1:40 am

    [...] by the OS when it comes to files. The first one is the
    mind-blowing slowness of hard drives, and disk seeks in particular,
    relative to memory. The second is the need to load file contents in
    physical memory once and share [...]

104. abpsoft on February 21st, 2009 4:00 am

    Hi Gustavo,

    a bit late but I just found your blog last week (following a quote
    of the week from LWN). Great article that IMO just missed the
    punchline spelled out, so what is our computer doing when we wait?
    It’s waiting, too!

    I also wanted to complain on your 30MB/s GigE figure. You asked for
    benchmarks that show 1000Base Ethernet to perform better than that.
    Here is one using netio between two HP ProLiant class servers (none
    of them is too new, still P4-Xeon class, and one of them is even
    pre-PCIe):

    [root@alucard \~]\# ./netio-126 -t dracula

    NETIO – Network Throughput Benchmark, Version 1.26\
     (C) 1997-2005 Kai Uwe Rommel

    TCP connection established.\
     Packet size 1k bytes: 114411 KByte/s Tx, 111119 KByte/s Rx.\
     Packet size 2k bytes: 114058 KByte/s Tx, 111604 KByte/s Rx.\
     Packet size 4k bytes: 113891 KByte/s Tx, 113995 KByte/s Rx.\
     Packet size 8k bytes: 113587 KByte/s Tx, 114077 KByte/s Rx.\
     Packet size 16k bytes: 111699 KByte/s Tx, 113767 KByte/s Rx.\
     Packet size 32k bytes: 112168 KByte/s Tx, 84575 KByte/s Rx.\
     Done.

    There is a physical distance of 9km separating these two servers.
    Each one is connected using 1000BaseT to a switch, the switches are
    connected using 10GBase-LR (servers are in a single broadcast
    domain). I’m testing from a CentOS 4.latest, the other side is
    running W2k3. There are no jumbo frames in use (or, for that matter,
    any kind of non-standard optimization).

    Whenever a poor measurement is seen in the wild, it’s usually one or
    a combination of:

    \* Crappy hardware. Not so often today with PCIe, but earlier
    incarnations\
     of 1000BaseT NICs were often attached insufficiently (PCI 32@33).\
     There’s also still a difference between an Intel Server NIC and
    the\
     typical RealTek cheap-as-dirt stuff. Offloading to the NIC
    (Checksums\
     or even the entire TCP processing) also helps a lot.\
     \* Inadequate measuring means. SMB is completely useless, as it is
    both an\
     inefficient protocol involving ping-pong latency (you don’t
    achieve\
     10MB/s on 100Base either) and is usually
    disk-and-filesystem-backed.\
     \* Challenged transport protocol implementations. The
    bandwidth-latency-\
     product of GigE is demanding, some older TCP stacks cannot really
    make\
     use of it (especially with multiple switch hops between the end
    systems)

    So when measuring adequate hardware (both the CPU and I/O subsystem
    including the NIC have to fit in here) and software (a modern server
    OS with properly designed TCP stack [window scaling etc] and a pure
    TCP pumping benchmark program like netio or iperf) you will see 100%
    standard compliant GigE doing significantly more than 90MB/s without
    a hitch.

    HTH and keep on the good work,\
     Andre.

105. [Qué hace tu computadora mientras esperas (que termine de cargar) |
    arturogoga](http://www.arturogoga.com/2008/12/29/qu-hace-tu-computadora-mientras-esperas-a-que-termine-de-cargar/)
    on February 21st, 2009 9:56 am

    [...] artículo lo encontré en el blog de Gustavo Duarte y me pareció
    tan bueno y completo, que no dudé ni un segundo en pedirle los
    permisos necesarios [...]

106. [Why your computer is slow «
    ScottMilling.com](http://scottmilling.com/2008/12/01/why-your-computer-is-slow/)
    on March 11th, 2009 1:54 pm

    [...] Why your computer is slow Published December 1, 2008 Hardware
    , Uncategorized Tags: PC Why your computer is slow [...]

107. [Confluence: Mandu: Marktplaats PD NextGen
    Architecture](http://mpwiki.corp.ebay.com//display/MPNG/Requirements)
    on March 13th, 2009 7:15 am

    **Requirements…**

    Requirements End user response time 250ms for all pages 100ms
    roundtrip between request and response our side…….

108. [Gustavo Duarte](http://duartes.org/gustavo/blog) on March 23rd,
    2009 6:31 pm

    @abpsoft: thank you for posting the benchmarks. I have fixed the
    diagram to reflect them (I went with 100 MB/s). And sorry for the
    delay in the reply.

109. RaiulBaztepo on March 28th, 2009 5:14 pm

    Hello!\
     Very Interesting post! Thank you for such interesting resource!\
     PS: Sorry for my bad english, I’v just started to learn this
    language
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)\
     See you!\
     Your, Raiul Baztepo

110. [shivlu jain](http://shivlu.blogspot.com) on March 31st, 2009 12:31
    am

    good article.

    regards\
     shivlu jain

111. [Everyone should have at least one Gotchi! » What your computer
    does while you
    wait](http://blog.gotchi.at/2009/03/31/what-your-computer-does-while-you-wait/)
    on March 31st, 2009 1:58 am

    [...] What Your Computer Does While You Wait [...]

112. heulenwolf on April 7th, 2009 1:26 pm

    Here’s a possible source for gigabit throughput numbers:
    [http://www.smallnetbuilder.com/component/option,com\_chart/Itemid,189/](http://www.smallnetbuilder.com/component/option,com_chart/Itemid,189/)

113. [Page Cache, the Affair Between Memory and Files « Motherboard
    Blog](http://motherboards.lastdepot.com/?p=12) on May 14th, 2009
    4:42 pm

    [...] by the OS when it comes to files. The first one is the
    mind-blowing slowness of hard drives, and disk seeks in particular,
    relative to memory. The second is the need to load file contents in
    physical memory once and share [...]

114. [What your computer does while you wait « Suprgeek’s
    Blog](http://suprgeek.wordpress.com/2009/05/15/what-your-computer-does-while-you-wait/)
    on May 15th, 2009 5:35 am

    [...] your computer does while you wait By suprgeek Gustavo has a
    great post on his blog What your computer does while you wait. It
    has a couple of very excellent diagrams detailing the state of
    affairs and some nifty work [...]

115. [Phaoloo](http://www.gigglecomputer.com) on July 4th, 2009 5:44 am

    Great and clearly description
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

116. [Latency: A current perspective « I Debug, Therefore I
    Exist](http://idebugthereforeiexist.wordpress.com/2009/07/15/latency-a-current-perspective/)
    on July 14th, 2009 10:58 pm

    [...] I would highly recommend you check out the blog post
    referenced in the image: What Your Computer Does While You Wait
    [...]

117. [Hard Disk Drives are Holding You Back « Nerd
    Fortress](http://nerdfortress.com/2009/07/15/hard-disk-drives-are-holding-you-back/)
    on July 15th, 2009 6:03 am

    [...] cooling, of course) that still uses that most ancient of
    technologies, Moving Parts. The situation is so bad, in fact, that
    software engineers go to great lengths to avoid EVER reading from
    the hard drive. [...]

118. ricks on July 22nd, 2009 9:17 pm

    Good Information , its helpful to me.

    Thanks

119. [haoguoliang](http://www.haoguoliang.com) on August 31st, 2009 6:50
    pm

    Really Good Discription & Tutorial

120. [HotChips 101](http://www.benjamintseng.com/2009/08/hotchips-101/)
    on December 12th, 2009 4:10 pm

    [...] and less about “chip speed” and more and more about memory and
    input/output. An interesting blog post by Gustavo Duarte highlighted
    something very fascinating to me: your CPU spends most of its time
    waiting for things [...]

121. [Interesting Reading… – The Blogs at
    HowStuffWorks](http://blogs.howstuffworks.com/2008/12/03/interesting-reading-191/)
    on January 11th, 2010 11:15 am

    [...] What Your Computer Does While You Wait – “This post takes a
    look at the speed – latency and throughput – of various subsystems
    in a modern commodity PC, an Intel Core 2 Duo at 3.0GHz…” [...]

122. [toolbar icons](http://www.toolbar-icons.com) on February 26th,
    2010 11:05 am

    how informative this post is.i am glad to know deeply about this.\
     yes many times my high speed processor got slow due to lot of
    unwanted files and due to lack of subroutines. we are also well
    aware about the uses of data cache and subroutines as this allow us
    to reduce the repeating data and come with more speed.\
     i also preferred some [toolbar icons](http://www.toolbar-icons.com)
    which are very easy and decent to use.

123. [Relative Cost of Distributed Architectures « Measure Once, Cut
    Twice](http://measureonce.wordpress.com/2010/04/11/relative-cost-of-distributed-architectures/)
    on April 24th, 2010 9:31 am

    [...]
    [http://duartes.org/gustavo/blog/post/what-your-computer-does-while-you-wait](http://duartes.org/gustavo/blog/post/what-your-computer-does-while-you-wait)
    [...]

124. [Relative Cost of Distributed Architectures « Measure Once, Cut
    Twice](http://measureonce.wordpress.com/2010/04/24/relative-cost-of-distributed-architectures/)
    on April 24th, 2010 9:34 am

    [...]
    [http://duartes.org/gustavo/blog/post/what-your-computer-does-while-you-wait](http://duartes.org/gustavo/blog/post/what-your-computer-does-while-you-wait)
    Possibly related posts: (automatically generated)Tray Dictionary 1.3
    has new face [...]

125. [Optimize your PC to run mucho
    faster-o](http://pau.lc/optimize-your-pc-to-run-mucho-faster-o) on
    May 28th, 2010 8:47 pm

    [...] devel­oper Gus­tavo Duarte explains exactly what your
    com­puter does while you wait, in a thor­ough, tech­ni­cal answer to
    the ques­tion “Why the hell is my com­puter tak­ing [...]

126. [Articles •
    brettalton.com](http://blog.brettalton.com/2010/05/04/tips-for-purchasing-a-laptopnotebook-for-around-1000-cdn/)
    on July 2nd, 2010 7:05 am

    [...] of how fast the CPU and RAM are compared to the hard drive, I
    will modify an analogy from Gustavo Duarte’s “What Your Computer
    Does While You Wait” (a good read if you want to learn the internals
    of the CPU and memory). Don’t worry about what L1 [...]

127. [SSDs: are you experienced? « Computing
    Keith](http://computingkeith.com/2010/08/03/ssd-are-you-experienced/)
    on August 4th, 2010 9:16 pm

    [...] Duarte, in his article “What Your Computer Does While You
    Wait,” has an excellent analogy that brings home the massive
    disparity between the speed of a modern [...]

128. [SCV Computer Repairs](http://www.snkrepairs.com) on August 11th,
    2010 4:51 pm

    Pretty in depth and detailed. It’s an amazing reference and Already
    bookmarked. Keep up the good work.

129. [O que ele faz enquanto esperamos «
    mb|Weblog](http://miguelbettencourt.wordpress.com/2008/12/22/enquanto-esperamos/)
    on August 13th, 2010 2:10 am

    [...] blogger Gustavo Duarte oferece-nos uma excelente resposta a
    esta questão, no seu post “What Your Computer Does While You Wait“.
    38.716667 -27.216667 Arquivada em Informática ← A grande muralha
    virtual [...]

130. [计算机各系统组件的吞吐量和延迟 看图不说话 |
    Erlang非业余研究](http://blog.yufeng.info/archives/757) on October
    8th, 2010 7:03 am

    [...] 图片来源 Categories: Linux Tags: 内存, 北桥, 带宽，南桥
    Comments (0) Trackbacks (0) Leave [...]

131. [Inaamdaar Hindi Radio](http://www.hindi-radio.com/) on November
    9th, 2010 6:52 am

    Now you can listen to songs even when your computer is idle and can
    use the windows computer speakers as your music station.

132. [boB Gudgel](http://bob.gudgel.org) on November 9th, 2010 3:46 pm

    Some wise guy once said…

    On a clear disk, you can seek forever…

133. Gerald on November 9th, 2010 5:14 pm

    20 years ago we had 386 processors and that processor could run
    windows 3.0 in enhanced mode. 20 years later what a strange trip it
    has been

134. [Tanmoy Das](http://www.dasideen.com) on November 9th, 2010 7:31 pm

    This was informative.. i like it. would enjoy more such informative
    write ups.

135. David Scheppers on November 10th, 2010 9:42 pm

    Perhaps Jesus would get a better throughput if he cached a few bible
    quotes in his L2 cache. Maybe you could consider the brave freedom
    fighters while your computer performs some random disc access via
    the south bridge.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    Thanks for an interesting article.

136. [SneWs](http://grenangen.se) on November 14th, 2010 1:04 pm

    Tanks. This is a great article!\
     Keep up the good writing.

137. [Weekend miscellany — The
    Endeavour](http://www.johndcook.com/blog/2010/11/19/weekend-miscellany-63/)
    on November 19th, 2010 11:27 am

    [...] What your computer does while you wait Curly brace expansion
    in bash Python in high performance computing [...]

138. [Computer Builders’ Friday – The “Core”
    Upgrade](http://imagineitproductions.com/blog/index.php/2010/11/19/computer-builders-friday-the-core-upgrade/)
    on November 19th, 2010 12:55 pm

    [...] Things to look out for You will want to make sure that the pin
    type matches between the motherboard and CPU.  For instance, an LGA
    1366 pin Core i7 CPU must be put onto a LGA 1366 pin motherboard. In
    terms of price point, be aware that small amounts of frequency
    increase (e.g. between 2.4GHz and 2.63GHz) are not worth the extra
    \$\$.  A larger number of cores and amount of L2 cache, however, is
    worth it.  Many know the benefits of quad and even hexa-core
    processors already, but L2 cache is the second-in-line memory bank
    your system hits and is about 20x less latency than regular DDR RAM
    (Gustavo Duarte). [...]

139. [nuclear powered soup
    kitchen](http://soup.nuclearsquid.com/post/89240707/Here-we-see-our-first-major-hit)
    on November 21st, 2010 11:25 am

    **“Here we see our first major hit, a massive \~250 cycles of
    latency that often …”…**

    Here we see our first major hit, a massive \~250 cycles of latency
    that often leads to a stall, when the CPU has no work to do while it
    waits. To put this into perspective, reading from L1 cache is like
    grabbing a piece of paper from your desk (3 second…

140. [My
    soup](http://leyrer.soup.io/post/89242635/The-latency-to-a-fast-website-say)
    on November 21st, 2010 11:39 am

    **“The latency to a fast website (say, google.com) is about 45ms,
    comparable to …”…**

    The latency to a fast website (say, google.com) is about 45ms,
    comparable to hard drive seek latency. In fact, while hard drives
    are 5 orders of magnitude removed from main memory, they’re in the
    same magnitude as the Internet. Residential bandwidth …

141. [Information Overload 2010-12-05 «
    citizen428.blog()](http://citizen428.net/archives/1339) on December
    6th, 2010 1:42 am

    [...] What Your Computer Does While You WaitInteresting article
    comparing the relative speeds of the various parts in your computer,
    using illustrative examples. [...]

142. [Latency is always present - Performance Within
    Reach](http://unmanageability.com/index.php/2010/12/27/latency-is-always-present/)
    on December 27th, 2010 6:55 am

    [...] What Your Computer Does While You Wait : Gustavo Duarte Many
    discrete wait periods are required when accessing memory. The
    electrical protocol for access calls for delays after a memory row
    is selected, after a column is selected, before data can be read
    reliably, and so on. The use of capacitors calls for periodic
    refreshes of the data stored in memory lest some bits get corrupted,
    which adds further overhead. Certain consecutive memory accesses may
    happen more quickly but there are still delays, and more so for
    random access. Latency is always present. There are 0 comments to
    this post. Add Your Comment. [...]

143. [links for 2010-12-30 « WhilelM’s little
    Wor(l)d](http://whilelm.wordpress.com/2010/12/31/links-for-2010-12-30/)
    on December 30th, 2010 9:02 pm

    [...] What Your Computer Does While You Wait : Gustavo Duarte (tags:
    hardware performance reference programming lang:en processor memory)
    [...]

144. Eduardo on January 20th, 2011 6:04 pm

    Well, i not use a inter processor, so… This is useless…

145. Dustbunnyfarmer on January 21st, 2011 4:16 pm

    MAXLOL @ \#22.\
     No seriously. TOTAL maxlol.

146. [Metrologic Barcode Scanner](http://www.barcodescannerpro.com) on
    January 26th, 2011 1:23 pm

    I had fun reading this post. Very informative and interesting.
    Thanks.

147. [the brook › Spin locks and the vicious multi-threading
    cycle](http://yavin4.anshul.info/2011/01/27/spin-locks-and-the-vicious-multi-threading-cycle/)
    on January 27th, 2011 12:52 am

    [...] as RAM latency. A disk seek, by comparison, has a latency
    measured in millions of cycles (see this excellent article for more
    info). The bottom line — you shouldn’t be using spin-locks unless
    you’re [...]

148. [Puissance de 10 et calculs au dos d’enveloppe | Blog Redsen
    Consulting](http://blog.redsen-consulting.com/2011/01/puissance-de-10-et-calculs-au-dos-denveloppe/)
    on February 9th, 2011 5:00 pm

    [...] What your computer does while you wait Publié dans
    Fondamentaux | Tags : performance, scalability [...]

149. joe on February 10th, 2011 11:45 am

    Man your numbers are pretty far off, some as much as 25% or so.

150. Aakash on May 9th, 2011 6:42 pm

    Very cool article for shallow readers like me. Liked it a lot.

151. [Lee](http://www.lee-johnston.com) on July 1st, 2011 3:20 pm

    Very nice post. I loved the link to real world examples of time vs.
    fetch times. I think most that read a post like this would have that
    in there heads anyway, but it’s nice to have this in my back pocket
    to explain to a non-nerd. Thanks! Lee

152. [Computers Technology Gadgets & Web » 8 Computer Wait Sites »
    Computers Technology Gadgets &
    Web](http://apple.mkcomputing.com/8-computer-wait-sites) on October
    27th, 2011 3:56 am

    [...] What Your Computer Does While You Wait : Gustavo DuarteNov 30,
    2008 What Your Computer Does While You Wait. This post takes a look
    at the speed latency and [...]

153. [server cabinets](http://www.keyzone.com/) on November 2nd, 2011
    3:10 am

    nice and informative blog.The best part was the pictorial
    representation.I really like the schematic representation which is
    used for understanding of this topic.

154. [Puissance de 10 et calculs au dos d’enveloppe «
    Redsen](http://www.redsen-consulting.com/2011/01/puissance-de-10-et-calculs-au-dos-denveloppe/)
    on November 3rd, 2011 7:12 am

    [...] What your computer does while you wait [...]

155. [Made of String » Quicker ways of processing log
    files](http://madeofstring.co.uk/article/quicker-ways-of-processing-log-files/)
    on January 29th, 2012 2:26 pm

    [...] and suggests gzipping your log files to avoid having to wait
    for reading from disk. (See “What Your Computer Does While You Wait”
    by Gustavo Duarte for a good explanation of how slow the various
    different storage methods [...]

156. igor on February 14th, 2012 2:50 am

    Excellent article! Thank you.
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

157. David Harvey on November 1st, 2012 9:07 am

    Wonderful post — thank you. It’s been great for clarifying why SSD’s
    are such a monumental technology.

    Questions for Mr. Duarte and readers:

    ​1. Have you considered writing a revised version for 2012, since a
    lot of the numbers have changed.

    ​2. Has anyone else seen an article like this, but with a more
    recent date?

    Keep up the amazing work!

158. [Confluence:
    NTSETNT](http://doc.hz.netease.com/pages/viewpage.action?pageId=32083720)
    on November 28th, 2012 1:09 am

    **Linux\_AIX收集的一些系统命令…**

    记录操作系统，存储部分常用命令…

159. [What Your Computer’s Doing While You Wait | Lifehacker
    Australia](http://www.lifehacker.com.au/2008/12/what_your_computers_doing_while_you_wait-2/)
    on December 19th, 2012 2:03 am

    [...] developer Gustavo Duarte explains exactly what your computer
    does while you wait, in a thorough, technical answer to the question
    “Why the hell is my computer taking so long [...]

160. [Profpatsch](http://profpatsch.de) on January 14th, 2013 12:14 pm

    Great, fascinating article.\
     Many thanks.

161. Arun Bassi on March 5th, 2013 12:14 am

    Many thanks for sharing a such great article

162. [クロエ バッグ](http://www.chloeoutletstore2013.com/) on April 5th,
    2013 11:37 pm

    What’s Taking place i am new to this, I stumbled upon this I’ve
    discovered It absolutely useful and it has helped me out loads.

    I’m hoping to contribute & assist other customers like its helped
    me. Great job.

163. Evi1M4chine on April 26th, 2013 3:03 pm

    Today I learned that speed-wise it makes more sense to keep all data
    on a central server with a hyper-parallelized RAID and a fast
    network (which an even include fast Internet connections) than on a
    lonely (and hence slow) local disk.

    Hmm… I have to rethink how I build computers. Lone local hard disks
    don’t really make sense anymore…

164. nineright on December 22nd, 2013 8:01 pm

    so cool!! Thx Gustavo

165. Pratik on March 3rd, 2014 11:43 pm

    Hi,

    The diagram shows that south bridge connects hard disk with the help
    of SATA port of 300 MB/s. So what about SAS and SAS SSDs coming now
    a days in market? Do they also connected with same port? Do they
    give same 300 MB/s speed? Because I have heard that SSDs are much
    faster then others.
