---
layout: page
title: "Comments"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---
**22 Responses to “Of Aviation Crashes and Software Bugs”**

1.  [links for 2008-05-22 -- Chip’s
    Quips](http://www.chipsquips.com/?p=1082) on May 22nd, 2008 2:33 am

    [...] Of Aviation Crashes and Software Bugs : Gustavo Duarte If
    airplanes were flown like software is written, we’d all be dead.
    (tags: programming languages debugging quality testing) Tags: c,
    codinghorror, comparison, consulting, creativity, debugging,
    development, eiffel, java, languages, perl, php, programming,
    python, quality, questions, ruby, smalltalk, techrepublic, testing,
    visualbasic [...]

2.  Andrew Cowenhoven on May 23rd, 2008 9:54 am

    Excellent post as usual.

    I would add to your list:

    \* Have you been effectively trained in the use of the tools at your
    current job?

    \* Have you been effectively trained in the business rules of your
    current job and do you know why you are writing the code you have
    been asked to write?

    In my career the above has almost never happened at any of my jobs.
    I would even go so far as to say that the ability to function in the
    absence of the above defines what we call a “good” programmer.

    Other industries would never tolerate the absence of specific and
    relevant on the job training that is common in software development
    teams.

3.  [apotheon](http://sob.apotheon.org) on May 23rd, 2008 8:33 pm

    I checked out the Writing Solid Code page at Amazon, and it looks
    like it’d be a good read with one unfortunate exception — it seems,
    from what the Amazon page says, to be very Microsoft-platform
    centric. Is that an incorrect impression, or would I basically need
    to start doing more development for Microsoft platforms and with
    Microsoft tools to be able to make the best use of the book?

    Also . . . you didn’t exactly endorse the book, you just quoted it.
    Is it actually all that good overall?

    As for the rest of the essay, I’ve got to say that I find it pretty
    agreeable. Thanks for a good write-up of the topic.

4.  anonymoustroll on May 23rd, 2008 10:16 pm

    I’ve often joked that the quickest way to reduce the amount of
    trusted code is to require all code that runs with privileges to be
    coded in upper case.

    …you know how much programmers and anyone with a clue hates upper
    case.

    I’m telling you… it would work!

5.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on May 23rd, 2008
    10:16 pm

    Hi there,

    Thanks for the comments, I’m glad you guys like the post.

    @Andrew: I totally agree. It’s insane, really, the way most
    companies handle this. Especially because it’s a penny wise pound
    foolish thing: they waste a lot of money due to this lack of
    training.

    This post sort of focused on security – in that area I see companies
    scrambling to hire application security people, spending a ton of
    money to patch broken apps, etc – when they could easily train
    people on how to write better code, and most programmers would
    actually enjoy learning.

    The point about the business rules is even better though. Gosh, how
    many projects were horribly off-target because people didn’t have
    the \_faintest\_ idea of the business behind the app – not to
    mention the other way around, how much improvement is missed on
    because programmers don’t know how they could help out.

    Yea, training definitely belongs in the list

    @apotheon: It does look like that from the Amazon page, but it’s not
    at all Microsoft centric. I guess back in 1993 it was cool to put
    “Microsoft” on book covers
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    How times change. hehe.

    Now, the book \_is\_ C-centric. The examples are all C, and some of
    the information is specific to C. I’d say if you don’t do C
    programming, you would miss out on some of the book’s value.

    With that caveat, I do think it’s an excellent read, full of good
    advice, well written, and the author is clearly a great programmer.

    @anonymoustroll: hahahah. Sounds good to me
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    . Maybe we should write Bernstein and suggest it.

6.  [Mitch](http://globalsystembuilder.com) on May 23rd, 2008 10:22 pm

    Excellent post. But I think we software engineers have it all wrong
    – it’s not the implementation that’s wrong, it’s the design that’s
    wrong:

    [http://softwareindustrialization.com/TheHumbleSoftwareEngineer.aspx](http://softwareindustrialization.com/TheHumbleSoftwareEngineer.aspx)

7.  anonymoustroll on May 24th, 2008 11:51 am

    one of the software development processes that works a little closer
    to the NTSB/FAA feedback loop would the code that launches the space
    shuttle.

    I remember seeing an dead-tree article about that several years ago,
    but unfortunately i don’t remember the publication or even know if
    it’s available online.

    Ask around… it’s worth the effort to track it down if you’re really
    interested in how software development can be done right.

8.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on May 24th, 2008
    12:16 pm

    @Mitch: thanks for the link, this Alloy stuff from MIT is really
    interesting. My undergrad was math and I loved analysis and proofs,
    so I’m pretty interested in this kind of thing. Bernstein himself is
    a mathematician. However, I hold the standard position that the
    ‘traditional’ software proofs are impractical, but I also think that
    there’s likely to be a middle ground where the compiler can do a lot
    more work for us.

    With threading for example, it seems SO likely that you should be
    able to \_state\_ the behavior you need with respect to concurrency
    and let the compiler figure it out, rather than doing lock()s
    yourself.

    So, anyway, some sort of hybrid between full verification and zero
    verification. I need to read more on this, I’m pretty ignorant, so
    thanks for the link.

    @anonymoustroll: Sounds interesting, thanks for the tip. I’m
    currently without a way to do good journal / academic searches, but
    I’m setting one up soon, and I’ll look for this. I have read some
    about the shuttle software engineering (I wrote a post about
    [Feynman, the Challenger, and
    software](http://duartes.org/gustavo/blog/post/richard-feynman-challenger-disaster-software-engineering)
    in February), but I’d love to learn more about that stuff.

9.  Name on May 24th, 2008 1:18 pm

    \> Is it at all possible to avoid explicit threading? If so, shun
    threads because they’re a bad idea.

    Threads are not inherently a bad idea, and using them does not cause
    errors any more than using a relational database causes SQL
    injection. Just like the solution to SQL injection is a layer of
    abstraction over the underlying SQL, the solution to
    threading-related bugs is to use a language or library that
    abstracts away the details. The Erlang language is an excellent
    example of this.

10. [Gustavo Duarte](http://duartes.org/gustavo/blog) on May 24th, 2008
    1:36 pm

    [edited at 3:24pm]

    @Name: My first response was hurried – I was going to the park with
    my kids. heheh. I actually completely agree with what you say here.
    The concept of threading is not inherently busted – it better not
    be, given the reality of multi-cores. But the way most languages
    approach is screwed, Erlang is an exception to the rule.

    Here’s the original:

    @Name: it is \_far\_ more difficult to prevent threading problems in
    most languages than it is to prevent SQL injections. And the
    threading API of most languages is inherently a bad idea.

    But you’re right, Erlang is a great example of how to go about it.
    We also need strategies for other languages though, and I suspect
    using immutable/read-only data structures might be a big part of it.

11. [apotheon](http://sob.apotheon.org) on May 24th, 2008 1:39 pm

    \> It does look like that from the Amazon page, but it’s not at all
    Microsoft centric. I guess back in 1993 it was cool to put
    “Microsoft” on book covers How times change. hehe.

    Okay, thanks. That’s a relief. I’m moving it from “low” priority on
    my Amazon wishlist up to “medium”, as a result of that
    clarification.

    \> Now, the book \_is\_ C-centric. The examples are all C, and some
    of the information is specific to C. I’d say if you don’t do C
    programming, you would miss out on some of the book’s value.

    That’s perfectly fine by me. One of my next major goals with regard
    to programming projects (by the end of this year, I hope) is to
    start seriously re-familiarizing myself with C. It’s been a while
    since I’ve really done anything with C, and I feel the need to get
    back to it. So: sounds like a good book to add to the queue.

12. [Mitch](http://globalsystembuilder.com) on May 24th, 2008 3:09 pm

    As Dijkstra said, “program testing can be used to show the presence
    of bugs, but never to show their absence!”

    I hope you get a chance to check Alloy out more closely because it
    is definitely not like “traditional” formal methods:

    [http://www.sciam.com/article.cfm?id=dependable-software-by-de&print=true](http://www.sciam.com/article.cfm?id=dependable-software-by-de&print=true)

    Keep up the good writings!

13. [Gustavo Duarte](http://duartes.org/gustavo/blog) on May 24th, 2008
    3:31 pm

    @apotheon: you’re welcome. Now that you mention you’re particularly
    interested in C though, there’s another book I would recommend:

    [Expert C
    Programming](http://www.amazon.com/Expert-Programming-Peter-van-Linden/dp/0131774298/)

    This one is more popular, it’s a general (advanced) C book and not
    focused on correct code like Writing Solid Code. But it’s a really
    good book, very well written, one of the best programming books I’ve
    read. The guy is a master of C, goes over exactly the trouble spots,
    and writes in a fun (not dorky) way and mixes in some cool CS
    examples and folklore. Really cool book, I think all C programmers
    should read it, and due to the writing style it’s pleasurable to do
    so.

    @Mitch: cool, I’m definitely going to check it out.

14. anonymoustroll on May 24th, 2008 6:35 pm

    After a couple of minutes of google searching (I guess the article
    isn’t \*that\* old):

    [http://www.fastcompany.com/node/28121/print](http://www.fastcompany.com/node/28121/print)

15. [apotheon](http://sob.apotheon.org) on May 25th, 2008 1:17 pm

    Thanks for the recommendation. I’ve added that to my Amazon
    wishlist, too.

16. [ForumKral.Org » Blog Archive » Günlük Maceralar -
    18-21.05.08](http://forumkral.org/1970/01/01/gnlk-maceralar-18-210508/)
    on May 27th, 2008 2:45 pm

    [...] Of Aviation Crashes and Software Bugs Spying on Computer
    Monitors Off Reflective Objects Krai Mira: Work in Progress MMO Bir
    OWASP SoC’08 Projesi – SQLiBENCH Krai Mira: Work in Progress MMO
    [...]

17. kevin liu on June 11th, 2008 10:10 am

    enjoyed your article, keep up the good work!

18. [Michael Greenberg](http://www.weaselhat.com) on June 17th, 2008
    11:38 am

    @Mitch: It’s a little bit ironic that you use Alloy as your example
    of static verification, since it operates under the assumption that
    counterexamples will be small. Alloy does bounded verification,
    guaranteeing that your model is correct — for models up to some
    size. What Alloy does *not* offer is a wholesale proof of
    correctness.

    Better examples of correct-by-construction programs would be the
    Coq/Isabelle/etc. crowd, which can guarantee rigorous correctness,
    as well as some of the fancier systems like Sage (which makes an
    interesting compromise between static and dynamic guarantees,
    treating propositions that the theorem prover can’t guarantee as
    assertions to be checked at run time). Granted, all of those systems
    still aren’t ready for use as real programming languages, and are
    entirely unsuited to some tasks. On the other side of the coin,
    (unbounded!) SAT solvers offer real proof at cheaper and cheaper
    prices (e.g., Saturn).

    Hopefully the success of GC in (now, rather efficiently) eliminating
    a class of problems will eventually spread to other elements of
    programming languages and design processes. Tools like Alloy, Coq,
    and Saturn all have something to contribute.

19. [Alex](http://www.pcspectra.com) on August 20th, 2008 5:06 pm

    I feel very much the same way. Lets face it. Most software sucks.
    Look at the source code of any open source application and it’s
    clear they have had more than one developer working on the source.

    Something I strive for is such high consistency that it looks like
    my code was generated. I find consistency helps me keep my train of
    thought without getting lost in little details.

    Architecture is also something usually missing from most PHP
    software projects. Look at all the open source projects and try and
    find any kind of consistency in architecture and you’ll
    discombobulated in minutes.

    [http://www.fastcompany.com/magazine/06/writestuff.html](http://www.fastcompany.com/magazine/06/writestuff.html)

    I see someone already posted that link above but it’s always been a
    motivator for me to write solid software.

    Their bugs per line is extremely low and rightfully so…I think I got
    into the wrong area of software development. I should have tried to
    get into mission critical systems as opposed to buggy, slow,
    insecure, bloated carelessly written software.

20. [Günlük Maceralar - 18-21.05.08 | iLGinciX
    TEAM](http://ilgincix.byethost8.com/1969/12/gunluk-maceralar-18-210508/)
    on February 24th, 2009 9:17 am

    [...] Of Aviation Crashes and Software Bugs Spying on Computer
    Monitors Off Reflective Objects Krai Mira: Work in Progress MMO Bir
    OWASP SoC’08 Projesi – SQLiBENCH Krai Mira: Work in Progress MMO
    [...]

21. [iS34.Net Güncel Haberler » Günlük Maceralar -
    18-21.05.08](http://www.is34.net/gunluk-maceralar-18-210508.html) on
    March 21st, 2009 12:06 pm

    [...] Of Aviation Crashes and Software Bugs Spying on Computer
    Monitors Off Reflective Objects Krai Mira: Work in Progress MMO Bir
    OWASP SoC’08 Projesi – SQLiBENCH Krai Mira: Work in Progress MMO
    [...]

22. [The crash of Air France 447 - Page 6](http://www.therevcounter.com/general-mayhem/72262-crash-air-france-447-a-6.html#post1523596)
    on December 12th, 2011 10:13 am

    [...] Re: The crash of Air France 447 Aircraft safety AND software.
    Enjoy Of Aviation Crashes and Software Bugs : Gustavo Duarte [...]
