---
layout: post
status: publish
published: true
title: The Thing King
author: Gustavo Duarte
author_login: gduarte
author_email: gustavo-web@duartes.org
author_url: http://duartes.org/gustavo/blog
wordpress_id: 356
wordpress_url: http://duartes.org/gustavo/blog/?p=356
date: 2009-02-04 10:12:01.000000000 -07:00
comments: false
categories:
- Internals
- Culture
tags: []
---
 <p>I hope the <a href="http://duartes.org/gustavo/blog/post/how-the-kernel-manages-your-memory">previous post</a> explained virtual memory adequately, but I must admit I held back a much better explanation, which I first saw in <a href="http://www.amazon.com/Expert-Programming-Peter-van-Linden/dp/0131774298/">Expert C Programming</a>. It wasn't written by the book's author, Peter van der Linden, but rather by Jeff Berryman in 1972. Here goes:</p> <p><b>The Thing King and the Paging Game</b></p> <p>This note is a formal non-working paper of the Project MAC Computer Systems Research Division. It should be reproduced and distributed wherever levity is lacking, and may be referenced at your own risk in other publications.</p> <h4>Rules</h4> <ol> <li>Each player gets several million things.</li> <li>Things are kept in crates that hold 4096 things each. Things in the same crate are called crate-mates.</li> <li>Crates are stored either in the workshop or the warehouses. The workshop is almost always too small to hold all the crates.</li> <li>There is only one workshop but there may be several warehouses. Everybody shares them.</li> <li>Each thing has its own thing number.</li> <li>What you do with a thing is to zark it. Everybody takes turns zarking.</li> <li>You can only zark your things, not anybody else's.</li> <li>Things can only be zarked when they are in the workshop.</li> <li>Only the Thing King knows whether a thing is in the workshop or in a warehouse.</li> <li>The longer a thing goes without being zarked, the grubbier it is said to become.</li> <li>The way you get things is to ask the Thing King. He only gives out things by the crateful. This is to keep the royal overhead down.</li> <li>The way you zark a thing is to give its thing number. If you give the number of a thing that happens to be in a workshop it gets zarked right away. If it is in a warehouse, the Thing King packs the crate containing your thing back into the workshop. If there is no room in the workshop, he first finds the grubbiest crate in the workshop, whether it be yours or somebody else's, and packs it off with all its crate-mates to a warehouse. In its place he puts the crate containing your thing. Your thing then gets zarked and you never know that it wasn't in the workshop all along.</li> <li>Each player's stock of things have the same numbers as everybody else's. The Thing King always knows who owns what thing and whose turn it is, so you can't ever accidentally zark somebody else's thing even if it has the same thing number as one of yours.</li> </ol> <h4>Notes</h4> <ol> <li>Traditionally, the Thing King sits at a large, segmented table and is attended to by pages (the so-called "table pages") whose job it is to help the king remember where all the things are and who they belong to.</li> <li>One consequence of Rule 13 is that everybody's thing numbers will be similar from game to game, regardless of the number of players.</li> <li>The Thing King has a few things of his own, some of which move back and forth between workshop and warehouse just like anybody else's, but some of which are just too heavy to move out of the workshop.</li> <li>With the given set of rules, oft-zarked things tend to get kept mostly in the workshop while little-zarked things stay mostly in a warehouse. This is efficient stock control.</li> </ol> <p><strong>Long Live the Thing King!</strong></p> 

<p><b>Update:</b> Alex pointed out the difficulties of measuring grubbiness in a comment below.</p>

 [14 Comments](/comments/thing-king.html)
