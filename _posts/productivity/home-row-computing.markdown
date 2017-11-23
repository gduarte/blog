---
title: Home Row Computing
date: 2008-12-15 00:20:16 -07:00
comments: false
categories:
- [productivity]
---
Update August, 2013: [Stick Shift](http://stickshift.cubicle6.com/) is a
product that implements this on Windows.

This post teaches you how to set up your computer so that you can
generate any keystroke or key combination without taking your hands off
home row (the 'asdf' row of keys). You can then use the arrow keys, page
up/down, shortcuts, and more while in regular typing position. It works
across applications, allowing you to type and move about much faster. I
call it 'home row computing' and it's something I started doing after I
learned touch typing.

I'll explain the idea and give step-by-step instructions for Windows
systems. The first step is to do what power users have done all along:
reclaim the Caps Lock key. It is a fine piece of keyboard real estate
gone *completely* to waste, like a landfill in the middle of Manhattan.
We must also do some key remapping:

![Keyboard Remapping](http://static.duartes.org/img/blogPosts/keyboard.jpg)

The idea is to change Caps Lock so that it can be combined with other
accessible keys to produce all of the faraway keys shown above, plus
frequent key combinations and anything else you might want. When I say
"map to home row" I mean mapping to keys that can be reached while your
*hands* remain on home row. Nearby letter keys are fine too. For
example, `Caps Lock+j` could become the Up arrow and `Caps Lock+e` could
become `Alt+F4`.

It is common to turn Caps Lock into Control, but we don't actually want
that because nearly all Control+X combinations are already taken by
various programs, so we wouldn't be able to do much remapping. Some
Control+X combinations are very high yield (*e.g.*, the copy/paste/cut
combos) so we'll remap those onto home row. I think the best substitute
for Caps Lock is the "Apps Key". Since no software uses it as a shortcut
ingredient, we can hijack it without fear. Also, its normal role is to
open a right-click context menu, so that's a useful thing to have on
home row as it helps you stay clear of the mouse.

So download [SharpKeys](http://www.randyrants.com/sharpkeys/), run it,
and turn Caps Lock into the Application Key as shown below:

![SharpKeys screenshot, remap Application Key onto Caps Lock](http://static.duartes.org/img/blogPosts/sharpkeys.png)

OK, then click "Write to registry", log off and back on, and you're in
business. The second step is to download the outstanding
[AutoHotKey](http://www.autohotkey.com/) to run our remapping script.
AutoHotKey is a must have for Windows power users, featured
[repeatedly](http://www.google.com/search?hl=en&q=site:lifehacker.com+autohotkey)
on [lifehacker](http://lifehacker.com/). Since it is a full-on
automation and scripting engine there are many ways to do things.
However its native key remapping syntax (`OldKey::RemappedKey`) doesn't
work for us here since we want to map key combinations into single keys.
But you don't have to worry about that, you can just download my
ready-made script for either the
[qwerty](http://static.duartes.org/files/homerow-qwerty.ahk) (normal)
keyboard layout or the
[Dvorak](http://static.duartes.org/files/homerow-dvorak.ahk) (freak)
layout. Put it anywhere in your file system, then create a shortcut to
the script in the `Programs > Startup` folder so it runs when you log on
to Windows. By inspecting the script you'll be able to tweak it for your
tastes. Here's what it does out of the box:

![Home Row Computing Cheatsheet](http://static.duartes.org/img/blogPosts/homeRowComputing.png)

Thanks to AutoHotKey's eliteness the layout works well in practice. The
timing is not quirky at all and there are zero misfires. If you hold
down Caps Lock, you can press the other keys repeatedly and they'll be
remapped. Let go of Caps Lock and they're back to normal. The script
also handles modifiers such as Alt and Shift being pressed along with
the key combinations. It's pretty transparent. If you want to actually
toggle caps lock, then `Windows Key + Caps Lock` will do the trick.

It is a joy to have navigation keys on the home row. It makes browsing,
programming and writing much smoother. You can fly through dialogs.
Having Esc nearby is not bad either. All in all, I can't imagine going
back to a regular keyboard. Given AutoHotKey's power you can write
scripts to handle key combinations so there are many possibilities. I
adapted to this thing pretty fast; the symmetries between page up/up
arrow, home/left and so on helped a bit. Again, it's trivial to pick
your own bindings, take a look at other ideas for [cursor movement](http://en.wikipedia.org/wiki/Arrow_keys#Other_cursor_movement_keys)
and cook up your own scheme if you wish.

Some quick thoughts regarding text editors. When I first did this I was
an Emacs user so having a convenient Control key was crucial, but I
still think it's better to turn Caps Lock into the Apps Key instead.
Then you can pick and choose your macro bindings between Control and
Caps Lock, and given AutoHotKey's power you have a lot of leeway. I have
since switched to [Vim](http://www.vim.org/) (apostasy!!) and never
looked back. Vim users will recognize the beauty of having arrow keys on
the home row, but will probably barf at the exact key choices I used
since `jklh` is burned into their brains. Just edit the script. You'll
like navigating without switching modes, and Esc on the home row is
great for when you do switch. In Visual Studio this works seamlessly
without interfering with any of the native shortcuts.

I've tried this out on Windows XP, Server 2003, Vista, and Server 2008,
both 32- and 64-bit flavors. No problems that I know of, but use it at
your own risk. The script works over Putty so the keys are available on
the command line and Vim for all of the Unix boxes I use. If you know of
similar approaches in other OSes I'd love to hear it in the comments.
Hope this is useful!

**Update:** [Amjith](http://amjith.blogspot.com/) pointed me to
[XKeymacs](http://www.cam.hi-ho.ne.jp/oishi/indexen.html), a tool that
implements the same idea but for emacs keybindings (you could do a
similar thing via AutoHotKey, but this is convenient for sure). Also,
you guys in the comments are all in favor of Vim-style HJKL bindings, so
if anyone makes a script to do that, I'd be happy to host it.

**Update 2:** [Simon Scarfe](http://breakfastdinnertea.co.uk/) has
posted Vim-like bindings for qwerty
[here](https://dl.getdropbox.com/u/314700/homerow-qwerty.ahk). See the
comments for details. Thanks!

**Update 3**: Paul has posted a Linux implementation of this in a
[comment](comments/home-row-computing.html) below. Sweet.

[34 Comments](/comments/home-row-computing.html)
