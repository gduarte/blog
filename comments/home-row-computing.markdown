---
layout: page
title: "Comments"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---
**34 Responses to “Home Row Computing”**

1.  Casey on December 15th, 2008 2:45 am

    Why not map the arrow keys to match Vi? It would make using gmail
    and greader easier since they use the same mapping as well.

2.  [C.M](http://informationhunger.blogspot.com) on December 15th, 2008
    5:56 am

    Yeah, I agree totally with Casey. (I want vi key bindings
    everywhere…) Otherwise, thanks for the tip.
    ![:-)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

3.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 15th,
    2008 9:11 am

    Absolutely, if you’re a Vim user HJKL is the only way to go.

    The reason I didn’t start out that way is because I didn’t use Vim
    when I first set this up. Once I started on Vim I thought about
    changing, but I like the fact that the arrow keys match exactly my
    right hand fingers too. And since it’s transparent, I can use it on
    Vim as well, so it just sort of stayed.

    If anybody makes a HJKL variant though I’d be happy to host or link
    to it.

4.  Joe on December 15th, 2008 11:13 am

    hjkl bound like Vi is the first thing that I would change too. (But
    GREAT idea).

5.  [Amjith](http://amjith.blogspot.com) on December 15th, 2008 11:18 am

    I use emacs keybindings for this and there is a wonderful tool out
    there to achieve this
    [http://www.cam.hi-ho.ne.jp/oishi/indexen.html](http://www.cam.hi-ho.ne.jp/oishi/indexen.html)
    easy to configure.

6.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 15th,
    2008 11:31 am

    @Joe: thanks
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

    @Amjith: HAH, that’s cool! I knew there would be some other fanatics
    out there doing this as well
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    I’ll mention this in the post.

7.  [Simon Scarfe](http://breakfastdinnertea.co.uk) on December 16th,
    2008 7:50 am

    Hey thanks for this, it’s ace.

    I’ve whipped together a Vim-compatible one here:
    [https://dl.getdropbox.com/u/314700/homerow-qwerty.ahk](https://dl.getdropbox.com/u/314700/homerow-qwerty.ahk)
    (that should work, email me if it doesn’t, I’ve never gone public on
    dropbox before).

    All I’ve done is map h,j,k,l onto left, up, down, right
    respectively, and switched page-up and down around to mirror the new
    bindings (home and end feel “right” where they are).

    Again, this is awesome, keep up the good work!

    Si

8.  [Simon Scarfe](http://breakfastdinnertea.co.uk) on December 16th,
    2008 7:52 am

    Oh one more thing, I moved del onto G so that it doesn’t interfere
    with the new H.

9.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 16th,
    2008 9:11 am

    @Simon: cool, thanks! I’ve added a link in the post.

10. Valery Tolkov on December 30th, 2008 8:18 pm

    Caps lock key is super-convenient as a language/layout switch key.
    Of cause, only when you have to type bilingual texts.

11. [Andrew Pennebaker](http://yellosoft.us/) on January 13th, 2009 8:42
    am

    You nerds! Go back to pen and paper!

12. Paul on January 25th, 2009 10:29 am

    Would anyone care to provide a file or a guide to implementing this
    cool scheme in Linux, perhaps using xmodmap or xkb?

13. [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 25th,
    2009 9:23 pm

    @Paul: I’d love to have that on Linux as well. I don’t know of a way
    to get the setup working the way I have it on Windows though.

    If you figure something out, I’d appreciate if you let me know.

    I’ve thought about writing a kernel module to do this. This would
    have the advantage of working \_everywhere\_, even on a console tty.
    If I ever switch to a Linux desktop, I’d do this.

14. Paul on January 26th, 2009 6:46 pm

    Okay, I got it working on my Linux laptop, if not supremely
    elegantly. Evidently there is some overlapping of tasks between xkb
    and xmodmap under Xorg, so just setting the settings in xmodmap
    wasn’t doing the trick.

    First I made an \~/.Xmodmap file to turn my Caps Lock key into a
    modifier:\
     clear Lock\
     keycode 66 = ISO\_Level3\_Shift

    Then I modified the first stanza of my /usr/share/X11/xkb/symbols/us
    file to add the keymappings I wanted:

    key { [ h, H, Left ] };\
     key { [ j, J, Down ] };\
     key { [ k, K, Up ] };\
     key { [ l, L, Right ] };

    I saved both files and activated the changes with\
     setxkbmap ; xmodmap \~/.Xmodmap

    And it works great! Thanks for the idea — it’s a real time-saver.

    I don’t think you’d need a kernel module to make it work on the
    console; I think the built-in loadkeys can handle that.

15. [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 27th,
    2009 12:47 am

    @Paul: thanks! I’m going to update the post to include your
    solution. This is awesome.

16. Claes on February 3rd, 2009 3:11 pm

    Inspired by this excellent idea I added some keybindings to a fork
    of xkeyboard-config. See

    [http://github.com/claes/xkeyboard-config/tree/master](http://github.com/claes/xkeyboard-config/tree/master)

    With this fork installed, a similar layout as described here can be
    installed with the command

    setxkbmap -layout “se+movement+level3(caps\_switch)”

    (replace as suitable). “movement” adds the movement keybindings, and
    level3(caps\_switch) adds ISO\_Level3\_Shift to Caps Lock.

    It is my intention to push this upstream when it proves stable. (I
    don’t know how to install it as a custom keymap only, unfortunately)

17. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 3rd,
    2009 6:56 pm

    @Claes: that’s really cool. thanks for your work.

18. Kai Grossjohann on January 7th, 2010 3:44 pm

    @Paul: Does it work to select text with Shift + CapsLock + hjkl? I
    tried your method and couldn’t get it working. Basic cursor key
    movement with CapsLock + hjkl is working fine, though.

    I also tried xmodmap and got CapsLock + hjkl working but again
    failed to get selecting text to work.

19. arley dealey on March 2nd, 2010 10:46 am

    Simon’s vi keymapping file seems to be gone. I’ve made one
    available. Same remappings as Simon’s.

    [http://dl.dropbox.com/u/2338610/hrc-vi.ahk](http://dl.dropbox.com/u/2338610/hrc-vi.ahk)

20. Rossco on May 5th, 2010 1:21 am

    Thanx for the work here, good stuff.

    Important note:\
     If you mistakenly leave a key down in script (as the querty script
    link above is), you can get some issues.\
     I first noticed a problem when my drag-drop didn’t work.\
     add AppsKey + “key” up::SendInput {“key” Up}

    Mods:\
     Added lines,\
     ; Force reload when running file re-opened\
     \#SingleInstance force

    ikjl = up, down, left and right\
     uo = home, end\
     p; = page up, page down

    e = esc\
     r = run\
     w = close window\
     h and n swapped (h feels more like reversing)

    This layout works much better for me, and I’m finding it quite
    natural.\
     It will be interesting to see how long it takes me to try to use
    this on a computer not setup with it. Bet it won’t be long!

21. Yu-Chung Chen on December 30th, 2010 5:03 pm

    After reading about the Optimizer Keyboard
    ([http://geekhack.org/showwiki.php?title=Island:9140](http://geekhack.org/showwiki.php?title=Island:9140)),
    which basically implements this idea on a hardware basis, I looked
    for a way to do it by software. And I found this page which is
    exactly what I needed. Many thanks!

    I’m using IJKL for arrows and adjacent keys for delete etc., but
    focused on selecting / deleting whole words. It’s just much quicker
    to move around the text by word (both in the navigational sense and
    in the recomposing sense).

    When AppsKey hold:\
     Tab = Shift (so I can combine highlighting with the cursor movement
    comfortably)\
     j/l = Ctrl left / right (move a word left / right)\
     i/k = Up / Down\
     u = Delete\
     n = Ctrl Delete (delete a word)\
     Backspace = Ctrl Backspace (backspace a word)\
     0 / p = Page Up / Down\
     9 / o = Home / End

    I still need to get used to it but already see the potential
    benefits. Looking forward to a bit of programming tomorrow with this
    layout.

    Too bad that mapping the AppsKey on Capslock means Enso launcher
    ([http://humanized.com/enso/launcher/](http://humanized.com/enso/launcher/))
    has to be moved somewhere else…

22. [Mike](http://ebuild-project.org/) on March 16th, 2011 12:39 pm

    A while ago I had to move reluctantly to OS X from Windows. I say
    reluctantly because I did not want to live without home row
    computing!

    To cut a long story short, in the end I did manage to get a somewhat
    workable, but not entirely satisfactory setup. It seems it is only
    possible to set mappings for cocoa apps, not all applications, and
    even then sometimes (annoyingly) they can have short cuts (I will
    hold my peace on the state of OS X shortcuts) which map override the
    bindings provided.

    The files I am providing are for Dvorak. They also contain what I
    think to be improvements over the suggested mappings.

    caps + querty g -\> undo\
     caps + querty t -\> redo

    I also swapped backspace and delete around.

    Cocoa mappings

    [http://dl.dropbox.com/u/229443/home\_row/DefaultKeyBinding.dict](http://dl.dropbox.com/u/229443/home_row/DefaultKeyBinding.dict)

    Save this file to \~/Library/KeyBindings/DefaultKeyBinding.dict

    There are other significant applications which are not cocoa, but
    some have in application support for this kind of remapping. For me
    the big ones were Eclipse, Open Office and Firefox.

    For Eclipse

    [http://dl.dropbox.com/u/229443/home\_row/keyprefs.epf](http://dl.dropbox.com/u/229443/home_row/keyprefs.epf)

    To import keyboard preferences do File-\>Import, General/Preferences

    Open Office seemingly supports such remapping, but I did not manage
    to get anything working, so I gave up on that one. Firefox does not,
    by now my brain is used to this and I just automatically revert to
    the 3rd class short cuts and mousage (pronounced mouse-ij).

    Usually disclaimers apply. I am far from an expert on OS X workings,
    and this was just a result of a day or so of me messing around
    trying to get various things working. It may well be possible to do
    better.

    My thanks go to Mr. Duarte for enlightening me.

23. Richard Gomes on September 27th, 2011 6:46 pm

    IMHO, the Miniguru is absolutely perfect. See for yourself:\

    [http://www.guru-board.com/english/layout\_en](http://www.guru-board.com/english/layout_en)

    Unfortunately, its not available and I was forced to by a dinno
    called Unicomp Endurapro, which is a professional mechanical
    keyboard with a trackpoint.

    Once now I have the hardware for “Home Row Computing”, next step is
    emulate the way the wonderful Miniguru defines its Layer2 (as shown
    in the link above). Features in a nutshell:

    \* Caps becomes Control\
     \* Both controls become additional function keys\
     \* Swap both Alts with both Supers (or ‘Win’ keys)\
     \* Do not overwrite other layouts you’ve loaded previously

    In the example below, I load us-intl (with dead keys) and I choose
    miniguru:layer2 as an optional on top of it:

    \$ setxkbmap us(intl) -option -option miniguru:layer2

    In order to make this work, copy the text below into a file named
    /usr/share/X11/xkb/symbols/miniguru

    //\
     // Miniguru Layer2 layout\
     // see:
    [http://www.guru-board.com/english/layout\_en](http://www.guru-board.com/english/layout_en)\
     //\
     // author: Richard Gomes\
     //

    partial alphanumeric\_keys modifier\_keys\
     xkb\_symbols “layer2″ {

    name[Group1] = “Miniguru Layer2″;

    key.type[Group1]=”ONE\_LEVEL”;

    // Caps\_Lock becomes Control\_L\
     // Control\_L and Control\_R become ISO\_Level5\_Shift\
     replace key { [ Control\_L ] };\
     replace key { [ ISO\_Level5\_Shift ] };\
     replace key { [ ISO\_Level5\_Shift ] };\
     modifier\_map Mod3 { , };

    // Swap Alts with Supers\
     replace key { [ Super\_L, Hyper\_L ] };\
     replace key { [ Alt\_L, Meta\_L ] };\
     replace key { [ Super\_R, Hyper\_R ] };\
     replace key { [ ISO\_Level3\_Shift ] };\
     modifier\_map Mod1 { , };\
     modifier\_map Mod4 { , };\
     modifier\_map Mod5 { };

    key.type[Group1]=”EIGHT\_LEVEL\_ALPHABETIC” ;

    key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Escape ] }; //
    tilde\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, F1 ] }; // 1\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, F2 ] }; // 2\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, F3 ] }; // 3\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, F4 ] }; // 4\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, F5 ] }; // 5\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, F6 ] }; // 6\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, F7 ] }; // 7\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, F8 ] }; // 8\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, F9 ] }; // 9\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, F10 ] }; // 0\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, F11 ] }; // minus\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, F12 ] }; // equal\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Delete ] }; //
    backspace\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, BackSpace ] }; //
    space

    key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Home ] }; // u\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Up ] }; // i\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, End ] }; // o\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Previous ] }; // p\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Left ] }; // j\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Down ] }; // k\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Right ] }; // l\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Next ] }; //
    semicolon\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Delete ] }; // m\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Insert ] }; //
    comma

    key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Print ] }; // w\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Scroll\_Lock ] };
    // e\
     key { [ NoSymbol, NoSymbol, NoSymbol, NoSymbol, Pause ] }; // r

    };

24. Richard Gomes on September 27th, 2011 6:52 pm

    Some typos:

    ​1. I was forced to buy, and not forced to by.\
     2. The correct command must contain quotes, like this:

    \$ setxkbmap “us(intl)” -option -option miniguru:layer2

    Thanks

    Richard Gomes

25. Richard Gomes on September 27th, 2011 7:02 pm

    Oh… come on… the blog software swallowed parts of the text! too bad
    ![:(](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_sad.gif)

    Please download the file from here:\

    [http://www.jquantlib.org/ftp/rgomes/downloads/miniguru](http://www.jquantlib.org/ftp/rgomes/downloads/miniguru)

    Thanks again!

    Richard Gomes

26. Richard Gomes on September 29th, 2011 2:16 pm

    Putting everything together:

    ​1. The Miniguru is a compact keyboard with trackpoint, excellent
    for those interested in the ‘home row’ concept. Have a look at its
    Layer 2, which provides IJKL and other niceties.

    [http://www.guru-board.com/english/layout\_en](http://www.guru-board.com/english/layout_en)

    ​2. I’m providing a non-intrusive keyboard emulation for Linux. By
    non-intrusive I mean that the “miniguru(layer2)” option does not
    interfere with other keyboard configurations you may have selected.
    So you can have the Miniguru Layer2 on top of us-intl, for example.
    Well… mostly. Some configurations, like “de(neo)” (among some
    others) may be affected.

    How it works:

    ​1. Download the file I’m providing at\

    [http://www.jquantlib.org/ftp/rgomes/downloads/miniguru](http://www.jquantlib.org/ftp/rgomes/downloads/miniguru)\
     and put it into your folder\
     /usr/share/X11/xkb/symbols

    ​2. Enter the command below, which selects layout “us(intl)” and
    puts option “miniguru(layer2)” on top of it:

    \$ setxkbmap “us(intl)” -option -option miniguru:layer2

    That’s it. I hope it helps.

    Richard Gomes

27. Nikhil on September 13th, 2012 11:07 pm

    Thanks a lot Gustavo and all for such a time-saving compilation.

    But instead of compulsion of keeping pressed caps lock ( and then
    press another key), can somebody please suggest a way to do this
    with caps toggle mode. I mean..\
     now , caps + h =\> gives you left arrow\
     but , caps(pressed once) and h =\> should give me left arrow and
    when i toggle caps back , h should give me normal ‘h’\
     This should save us a lot of time. Please somebody hack it this way
    and post here:)

    Thanks.

28. [Making the Caps Lock key (very) useful on Windows » Danik Games
    DevBlog](http://danikgames.com/blog/?p=714) on January 8th, 2013
    4:33 pm

    [...] an annoyance. But there are ways to make it more useful. I
    recently found a very nice script by Gustavo Duarte which maps Caps
    Lock as a modifier key that lets you navigate in text Vim-style
    using H, J, K and [...]

29. Giles on January 13th, 2013 6:33 am

    Is it just me? When I implemented this on Windows 7, I got the
    desired effect (and very nice too!) but with just one failing – caps
    lock was not mapped onto Application key, the Application key
    remained unmapped ie continued to do its usual dreary work, and so
    Caps lock was unavailable. Adding a second line, the ‘reverse
    mapping’ in Sharpkeys, the exact opposite of the one given, has
    precisely the desired effect as described in the blog, with
    application key now mapped as caps lock. Hurrah! But, uh, surely
    this must have been spotted before? Is not the last line in AHK
    script intended to achieve this effect, but seems not to do so? Or
    am I just being dumb here, misunderstood something? Any road up,
    thanks for a great post even after all these years, this is just a
    minor point.

30. [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 13th,
    2013 7:38 pm

    @Giles: Were you able to use SharpKeys to do the key mapping? Or are
    you using only the AHK script?

31. Giles on January 27th, 2013 2:06 pm

    I think I followed your guide exactly, using sharpkeys frirst,
    saving to registry, it works as expected, just I need to add a
    second line which as I said is precisely the reverse mapping ie from
    00\_3A to E0\_5D. These together, when written to registry, work as
    expected. Then I use the AHK script you provide, compile to an exe,
    placed in startup, and all works fine. But without the second
    mapping, in sharpkeys, no caps lock. With the second mapping, just
    fine.

    I’ve just had another look at your AHK script and the last two lines
    are:\
     ; Make Windows Key + Apps Key work like Caps Lock\
     \#AppsKey::Capslock

    I’m puzzled by the hash on the last line, no other line has hash…? I
    suppose I could RTFM, but as is this last line appears not to be
    doing it’s job for me, I wondered if this is unintended?

    But anyway, doing via sharpkeys works just fine so I really don’t
    have a problem – thanks again for sharing all this because it is
    pretty cool.

32. naxa on April 5th, 2013 6:42 am

    great post as always!

    this may be a bit off-topic, but I cannot acces the site due to
    limitations on my computer imposed by my anti-virus program:

    ESET NOD32 Antivirus – Alert\

    [http://www.randyrants.com/sharpkeys/](http://www.randyrants.com/sharpkeys/)\
     Access to the web page was blocked by ESET NOD32 Antivirus.\
     The web page is on the list of websites with potentially dangerous
    content.

    is there any real potential danger in SharpKeys, or is this just a
    false-positive? Or maybe the site was attacked? (but I got this a
    month ago, too) Or (worst case) do they classify not-for-noob
    programs as viruses?

33. [Gustavo Duarte](http://duartes.org/gustavo/blog) on April 6th, 2013
    10:25 am

    @naxa: it’s always good to err on the side of caution, but in this
    case I think it’s a false positive. It could be that there is
    malware that uses Sharp Keys for ill intent, maybe remapping user’s
    keys to do key snooping or other bad deeds.

34. confounded on January 6th, 2014 5:00 am

    Great post, I’m using this on both Windows and Linux. You’ve saved
    my wrists!

    I did want to ask, however, is this supposed to disable the Apps
    key?

    Mine (tyring to use either Caps or the original key) now seem to be
    disabled, which is a shame, as I do get some use out of it. This has
    only happened on Windows, on Ubuntu everything is working as
    expected.


