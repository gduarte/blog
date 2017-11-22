---
layout: page
title: "Comments"
date: 2014-03-08 11:10
comments: true
sharing: true
footer: true
---
**64 Responses to “Richard Feynman, the Challenger Disaster, and
Software Engineering”**

1.  [John Ingle](http://www.eschatic.com/) on February 20th, 2008 11:27
    am

    You’ve written a fantastic article! I enjoyed reading it and am now
    excited about reading the full report. It’s amazing what we can
    learn from history. :)
    If you know of any similar documents doing post-mortems on the
    solutions to hard problems, I would be very interested in hearing
    about them. Especially if they’re written by anyone as engaging as
    Dr. Feynman!

2.  [V-dawg](http://www.madwhips.com/) on February 20th, 2008 12:57 pm

    Great Article Gustavo, I couldn’t agree with you more. Fundamental
    good design practices apply to any engineering discipline.

3.  mantrid on February 21st, 2008 4:36 pm

    Excellent article! I just had a thought that there is nothing bad in
    top-down approach in some circumstances. We’d like to build systems
    in top-down manner because it’s simpler than bottom-up and easier to
    manage. We’d like to build software as easy as we build houses.
    Perhaps we use top-down approach too early? I mean, top-down is good
    when we have reliable building blocks and we know almost every
    assosiations and implications between those bricks. But with today’s
    software engineering the problem is that we do not have such
    reliable blocks. As long as we’re discovering design problems and
    reliable solutions, we should stick to bottom-up approach, what will
    eventually let us shape those bricks and lead us one day to common
    building blocks for software. Only then it would be safe to ease the
    development process with top-down attitude. 10 years ago a developer
    had to consider hardware specific and low-level OS issues. But in
    time we learned how to address those problems and came up with
    hardware abstraction, common protocols, interafces, APIs, patterns,
    do-s and don’t-s. Today we don’t have to start bottom-up on such a
    low level as 10 years ago. We can start in a little bit higher
    level. Perhaps in time we will go higher again? How much higher will
    we be able to start from?

4.  Paul Wassmund on February 21st, 2008 7:04 pm

    I think it’s largely a matter of finding the correct balance. There
    IS a place for top-down design – it lets us consider the overall
    structure of the software, rather than just patching together a
    bunch of small pieces; it lets us address non-functional
    requirements such as reliability, extensibility, etc.; it allows us
    to make use of architectural patterns and design patterns that have
    been proven to be effective in other real-world applications.
    However, once we’ve established a design framework, we can build it
    from the bottom up, following the incremental approach (with testing
    at each step of the way) advocated here. Even during the top-down
    phase, we can do deep dives into areas in which there aren’t
    well-defined patterns to guide us, or where we don’t have experience
    with new hardware (this is a form of risk mitigation). It’s up to
    the engineers (and management) to determine what’s appropriate for a
    given situation, but to state that top-down is inherently bad is, I
    think, inaccurate.

5.  Austin on February 21st, 2008 7:07 pm

    Hogwash. The point of your article seems to be that top-down design
    leads to problems. I get this impression from "…’top down’ design,
    made in ignorance of detailed bottom-up knowledge, leads to
    problems." Yet, the stuff you later cite from Feynman doesn’t
    support this. The quote relating a desire for a "step-by-step
    increase in scope" isn’t about design, it’s about
    \_implementation\_. Design and implementation happen in SEPARATE
    PHASES OF PROJECTS. Top-down design, bottom-up coding. This is the
    way every software company in America writes software. You can’t
    design a system from the bottom up. Go ahead and try, I dare you… it
    doesn’t work out better.

6.  [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 21st,
    2008 7:20 pm

    Thank you all for the kind words.

    @John: Feynman’s appendix is by far the coolest thing I know in this
    regard. I’m glad this thing got Slashdotted so more people got to
    know it. I don’t know of anything like this off-hand.

    @Mantrid, Paul: I agree \_completely\_ with what both of you are
    saying. I’m going to write a follow up clarifying some of these
    things and what exacly I mean by ‘bottom up’. I’ve had the same
    discussion over email with someone at NASA. But I think you’re
    exactly right.

    @no no: Did you read Feynman’s appendix? What did you think of it?
    Do you think I interpreted it incorrectly?

7.  Austin on February 21st, 2008 9:12 pm

    I did read the appendix, and I don’t think the section you’ve cited
    is quite relevant. My point is you’re conflating the design and
    implementation phases in your article here. It’s one thing to
    criticize big up-front design/waterfall style project management,
    but another entirely to propose that "top-down" design is bad. Every
    engineering project is fundamentally top-down: you start with a goal
    (get a rocket into orbit, say) and figure out the details of how to
    make that work later. Design \_has\_ to be top down. Big up-front
    design, as mentioned by Feynman, is the idea that you can plan
    everything about a project and then put everything together in a
    minimal implementation phase. I think you meant to criticize this
    method of project management, since designs like this fail. But the
    fact remains, you must have a high-level design phase before you try
    to implement anything. You can’t design "bottom-up".

8.  cjones on February 21st, 2008 10:10 pm

    Fascinating article and I think it explains very clearly the common
    differences involved between those who manage a project and those
    who actually are getting the job done. This is a classic problem in
    most development shops where the people managing the
    developers/engineers have never actually coded anything themselves.
    Austin, stop being such a nerd and enjoy the damn article. You wanna
    show how much you know go to Slashdot and run your mouth
    know-it-all.

9.  Steve P. on February 21st, 2008 10:21 pm

    Good article, though you might have emphasized more that Feynman
    himself did not discover the temperature problem with the O rings.
    Here the true mark of his independence and basic honesty was that he
    was willing to publicly and very convincingly demonstrate it in
    front of cameras after being tipped off about the problem. A lesser
    person would have allowed the result to have been buried in the
    report to minimize the embarrassment to NASA and the US government.
    Feynman correctly realized magnitude of the engineering failure of
    which the O ring problem was just one symptom, and was not willing
    to let anybody get off lightly.

10. [Merlin Silk](http://www.merlinsilk.com/) on February 22nd, 2008
    12:08 am

    Richard Feynman was a little bit too difficult for when I was in
    college studying physics, or maybe he was too simple – - thinking
    about it, it must have been the latter. Because everything else in
    the lectures and classes was so darn difficult that what he had to
    say could not be so easy. I still have his Feynman lectures on
    Physics here on my book shelf, maybe it’s time to try to read them
    now. And with his ability to see things in simple ways he also
    impressed me in his biography, "Surely, you must be joking, Mr.
    Feynman" – so, yes, this guy can think, but what’s more important,
    he has the ability to live life to the fullest. In software
    development I have always followed the bottom up approach and caused
    some nervous break downs in managers because to them it seemed very
    slow. I was always vindicated because my stuff never needed any big
    fixes later, while the top-downers were later re-inventing bigger
    part of their work. So, yes, great article! Merlin
    [http://www.MerlinSilk.com](http://www.MerlinSilk.com)

11. [Gustavo Duarte](http://duartes.org/gustavo/blog) on February 22nd,
    2008 1:18 am

    Thanks again for the compliments.

    @Austin: I do see your point. Here’s what I wrote to someone about
    this: "I completely agree. That is one thing I do wish I had made
    clearer. I don’t interpret Feynman’s "bottom up" at all as meaning
    the chaotic, directionless processes we sometimes see in the
    industry. As he talks about "preliminary study of materials and
    components" in relationship to the engine, it’s clear to me that
    such a study would take place within the context of a plan and a
    preliminary design. After all engineers can’t randomly test
    materials until a space shuttle engine crystallizes in front of them :)

    " I am going to have a follow up entry addressing some of these
    points. However, I do think that many thoughtful teams are
    top-heavy, and would benefit from de-emphasizing the schism between
    design and build. I think you and I do differ in that I do not see
    the phase rigidity you do. I’m ignoring the chaotic crap shooters in
    this discussion though, I wouldn’t call them ‘bottom up’, just ‘a
    mess’.

    @Steve: that’s also a good point. I didn’t want to get too much into
    the o-ring history though. If I had known this would be read more
    widely than by my mom and dog, I might have talked some more about
    the history. So it goes. I’m just really happy that a lot of people
    got exposed to Appendix F, so all in all I’m happy.

12. ranjix on February 22nd, 2008 7:47 am

    tried to read earlier but was slashdotted. Anyway. Tried to read the
    little parallel between the avionics engineering and software. Not
    very good. Tried to read the appendix from mr. Feinman. I find it
    boring, irelevant, unconvincing, hiding behind the words. Sorry.
    Literature, not engineering. Too polite. "Let us make
    recommendations to ensure that NASA officials deal in a world of
    reality in understanding technological weaknesses and imperfections
    well enough to be actively trying to eliminate them." How about
    "these bulleted list is what I recommend and why: …"? Leave the
    fluff for the school play. Further. Somehow the texts (above and the
    appendix) leave impression that top-down=bad and bottom-up=good.
    Hardly believable. Reader Austin above remarks are right on the
    spot. Most of the projects start with a goal, followed by a top-down
    analysis and design. When starting writing code, the process
    automatically becomes bottom-up. Bottom-up design would mean "hey, I
    have this screw and this nut, let’s put them together, what do I
    see? Yeah! It looks like a part of a rocket!" Sorry for the
    stretched example, but that’s bottom-up for you. Also, there is a
    tendency to compare software with any other kind of engineering.
    Frankly I’m not sure it applies. In "normal" engineering, the
    materials are usually well tested, and the number of "moving pieces"
    is fairly limited. A bridge has fewer pieces than a car (probably)
    which has fewer pieces than a rocket. Also, the results of the
    "normal" engineering are visible, it’s easier to spot a screw with
    the wrong dimension than one of the 6 constructors with 2 parameters
    in the wrong order. To make it more like "software engineering", one
    has to add an unknown number of uncontrollable variables (os, dbs,
    messaging systems, firewalls, etc, none of them thoroughly tested),
    would have to make the engineers work in semi-darkness, and would
    have to make one feel like crap when the project is "done". I guess
    a question would be – at which point any project becomes
    unmanageable? be it a rocket or an os. It looks to me like there is
    a hard (human) limit. but enough for now

13. [Mike
    Petry](http://mikepetry.blogspot.com/2008/02/top-down-or-bottom-up.html)
    on February 22nd, 2008 6:01 pm

    Great post! I appreciate this work and I am definitely a fan of the
    late Dr. Feynman, but I am a proponent of software design. As a
    advocate for top-down software design, I typically find myself in
    the minority and have been meaning to blog on this topic myself. I
    found this posting to be a compelling counterexample to my own take
    on the subject and was motivated to post to my own blog. Although a
    fan of top-down design, I also believe in incremental development
    and find agile methods to be valid. I just happen to have had a lot
    of success developing very complex systems using UML. Of course UML
    is not a silver bullet and must be used in conjunction with good old
    exploratory hacking or the management friendly term "risk reduction
    prototyping". Thanks for the compelling and controversial posting.

14. otter on February 29th, 2008 5:23 am

    Ranjix, you said that [quote]In "normal" engineering, the materials
    are usually well tested, and the number of "moving pieces" is fairly
    limited.[/quote] But in the case presented, Feynman stated
    [quote]The engine was designed and put together all at once with
    relatively little detailed preliminary study of the material and
    components.[/quote] Anyways, I thought it was a great article and
    the opposing comments also gave a lot to think about. I guess that
    in the end the success of every project, be it software or
    engineering, will depend on striking the right balance between
    top-down, bottom-up, and management-worker relations.

15. mentalmodel on March 8th, 2008 11:18 am

    I think what makes the space shuttle example appropriate for
    software engineering is that both are systems that are fairly new,
    unknown, and complex. We haven’t evolved a professional discipline
    dedicated to space shuttle design and manufacture, so a lot of the
    problems encountered in the development of a reusable re-entry space
    vehicle are novel. To me, computer science is to software
    engineering as physics is to space shuttle design. It’s amazing to
    reflect on how little we know about software development. That said,
    I’m sure there was no shortage of self-proclaimed experts in space
    shuttle design inside of NASA at the time of the Challenger
    disaster. Will a similar event be necessary in order for there to be
    a reassessment of how software gets made?

16. [AVEng](http://www.kuttatech.com/) on March 13th, 2008 3:06 am

    I have worked in the avionics field for 15 years, as a system
    engineer, a software engineer and a technical lead. I’ve worked on
    the control systems for commerical jets, for small business jets and
    for UAVs. I’ve worked on collision avoidance systems, on
    performance/prediction systems and on flight/navigation sytems.
    Richard Feynman’s observations are brilliant and exactly on target.
    He illustrates perfectly the problems I’ve encountered throughout my
    entire career. The TQM top-down approach does not work, and never
    has. Plus, the "UML as blueprint" model is an absolutely
    catastrophic addendum to this already flawed approach, because not
    only does it abstract the design even further, in the cases where
    I’ve seen it employed it utterly fails to consider failure modes.
    No, the top-down approach is only good for one thing – frameworking.
    You use a top-down approach to design a system’s skeleton. After
    that, you immediately switch to a rapid prototyping paradigm to
    backfill the system’s details. That’s the only approach that works,
    and ALL systems are built this way, whether they official recognize
    it or not.

17. [Reid Peryam](http://reidperyam.com/) on March 14th, 2008 1:09 pm

    A text book example of Déformation professionnelle
    ![;)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_wink.gif)

18. [Gustavo Duarte](http://duartes.org/gustavo/blog) on April 2nd, 2008
    9:21 am

    @mentalmodel: that’s a good point, and Feynman explicitly states
    this in the report ("It is built at the edge of, or outside of,
    previous engineering experience."). But there’s a lot of engineering
    that happens where boundaries are being pushed, enough that I don’t
    think it’s fair to say "standard" engineering is about solving
    previously solved problems. Civil engineering, at least from the
    outside, is one where it does look like things are pretty formulaic
    by now – after all we’ve had buildings for a few thousand years
    (though things aren’t so clear, as per the Steve McConnell’s
    articles above). But in most branches I think the envelope is pushed
    more often than not. So the techniques for dealing with the new are
    fundamental to the field of engineering as a whole, and here there’s
    a lot of common ground with software.

    @AVEng: thanks for the feedback, it’s always interesting to hear
    from people doing the kinds of systems Feynman talked about. Your
    take on top/down is exactly what I do in my own projects: use
    top/down for a general skeleton, and then switch to reality:
    experimentation and prototyping.

19. Me, myself and I on June 19th, 2008 12:37 am

    IMO, there’s nothing wrong with a top-down approach at the right
    place.

    More exactly: you should use a top-down approach to detail the
    problem to be solved and to chop it into many more smaller problems,
    and then use a bottom-up approach to solve the individual problems.

    I always make a diference between architecture and
    design/engineering. Architecture is a direct result of requirements,
    and IMO transforming requirements into architecture is OK, since it
    is a safe way to create a vision of a product which matches the
    customer requirements. Nevertheless, it just creates a vision, one
    that may be proven unrealistic by engineers.

    However, letting engineers design the whole system bottom-up,
    starting from whatever they think is right and trying to adapt to
    each and every customer requirement incrementally, is IMO a bad
    approach, potentially yielding an extraordinary product from a
    technical point of view, but which no customer/end user would want
    to use, and p[otentially investing a lot more effort than
    appropriate.

    Of course, it greatly adds to the quality of design if architects
    are good programmers, and if engineers have direct contact to
    customers and are given a chance to train in understanding customer
    and end-user requirements – as a programmer, really putting yourself
    in an end-user’s shoes is harder than you may think.

    What do you have against UML? It’s a perfectly valid documentation
    tool, mostly for allready written code, even if when used to it you
    start by creating your code skeleton in UML – the blueprint. Of
    course, there are potentially many wrong uses of UML, but IMO it is
    a wonderful tool for documentation – of course, a bad designer will
    do a bad design with or without UML, but a good designer will do a
    good design easier using UML. Besides, no respectable engineering
    discipline works without blueprints, therefore I suppose UML is
    rather a part of the solution than a part of the problem.

    As for prototyping, it is IMO the worst approach. It should be used
    only when a completely new problem has to be solved, one for which
    there is nothing related ever done before, for which even
    requirements need to be defined by prototyping. It is the most
    expensive solution to drive a SW project. (We just finished such a
    project, where prototying was a customer requirement. The product is
    incomplete, it took at least twice as much time to build, and it is
    our estimation that by using our traditional approach we could have
    delivered the same product, with more features, with a three times
    lower budget.)

20. [Gustavo Duarte](http://duartes.org/gustavo/blog) on June 19th, 2008
    10:28 pm

    @Me, myself and I:

    Thanks for the well written comment.

    You know, these discussions are hard because the terms are so
    ill-defined. It’s not as if we’re looking at a concise, well-defined
    description of a process and then analyzing that. With that in mind,
    here’s my answer to some particular points. So here we go:

    Yes, you do need some top down analysis to be sure.

    Regarding vision, it can both help and hurt. It often means people
    stick to an idea or plan, and start ignoring reality and failing to
    adapt. This happens in many spheres of life, far beyond just
    software. It’s like CEOs whose “visions” get companies stuck in an
    ill-fated trail, ignoring markets, ignoring new evidence, pursuing
    grand plans full of risk rather improving incrementally on the
    fundamentals. Then blowing the company up.

    In software, what you get is a vision that more often than not:

    1. Comes from people who are technically incompetent, ignorant, and
    haven’t done software for years

    2. Is set in stone, due to organizational realities. Leading to:

    3. One hell of a mess where programmers need to work around
    brain-dead architectures.

    Does that mean that architecture is bad? No, of course not. You can
    do it right, but imho doing it right means realizing that
    architecture is a \_proposed\_ way to handle things, a sort of “hmm,
    let’s start going over here” rather than a detailed map to crapdom.

    However, here the lack of any rigor in definitions bites us. It
    seems we’re saying something similar, since you say that it “may be
    proven unrealistic by engineers”. I suspect we’re more in agreement
    than not regarding this pont.

    I completely agree with the cost thing.

    I think architects who are not good programmers should be shot. The
    ones who don’t program at all should be impaled. This idea of the
    “non-programming architect” is one of the most stupid things going
    on in enterprisey development imho.

    I totally agree on the user’s shoes thing. That’s one of the big
    failures of software development, the lack of attention to this. I
    think \_every\_ developer on a team should spend time \_living the
    user’s day\_ at some point, as early as possible, truly
    understanding – and hopefully doing, briefly – the job that will be
    impacted by the software.

    Regarding UML, I don’t have anything against UML itself, it’s a tool
    as you point out. Can be used well or poorly. Trouble is the latter
    is far more frequent. I’ve done much UML over the years, used
    several tools: Poseidon, Enterprise Architect, Rational stuff,
    Visio, you name it. I can do diagrams pretty well and pretty fast.
    So I’d say I’m an “experienced” UML user.

    I’d say this:

    1. UML diagrams often communicate less effectively than a simple
    block diagram or English text. They’re also expensive to produce in
    many organizations.

    2. Since people don’t really read the books and the specs, UML is
    pretty loose. I’ve seen so many non-sensical package, component, and
    class diagrams, gosh, it’s crazy. Is that UML’s “fault”? Well, yes
    and no, but we must evaluate UML in terms of its real-world usage,
    not some ideal UML-conforming paradise.

    3. Designing software classes graphically is silly. Whiteboarding
    with UML to get ideas going? Sure. Sitting down and “designing”
    software in UML? I think that’s a very bad way to go, often used by
    the non-coding architect types.

    4. The blueprint of the software engineering discipline is code.
    For software, code \_is\_ design. This is a fundamental point for
    me, something I believe deeply in. Diagrams are aids to
    \_understanding\_ the blueprint. It’s like looking at diagrams of an
    aircraft design that give you a high-level overview of what’s going
    on, to help you make out the forest Here UML can indeed help.

    5. Again, your usage of UML sounds very sane to me. Using it as a
    documentation tool for already written code: perfect. Using it as a
    tentative skeleton: perfect, though for me it’s more efficient to
    just use code for that. But the “UML as blueprint” crowd belabors
    under the illusion they can nail down every aspect of a “design”,
    every class and field and method, and then hand it down to
    programmers. \_That\_ is insanity imho.

    Nowadays I use UML in three primary ways: light whiteboarding, as
    understanding aids in architecture documents (my role is often of
    “architect”), and as documentation for a built system. But I must
    say in general I think UML has been more of problem than solution
    for software.

    Regarding the prototyping, I fully agree that decent requirements
    and good high-level direction at the start can reduce cost.

    This is an interesting discussion, I love to talk about this stuff.
    Thanks again for the well-made points, I wish we had more time to
    define things properly and speak more precisely about all this. I
    hope to start posting more often, then I’ll elaborate on some of
    these points.

21. [Webyantra  » How software bugs can lead to national catastrophic
    disasters?](http://www.webyantra.net/2008/08/24/how-software-bugs-can-lead-to-national-catastrophic-disasters/)
    on August 24th, 2008 6:07 am

    [...] a software failure but the investigations had spillover
    effects in the software field as well (see this [...]

22. [Richard Feynman’s Modest Science : Gustavo
    Duarte](http://duartes.org/gustavo/blog/post/richard-feynmans-modest-science)
    on August 25th, 2008 4:40 am

    [...] time off and hit physics again. If you want to read more of
    his stuff, Feynman wrote an insightful essay on engineering and
    there’s the classic Cargo Cult Science, both online. Amazon has the
    lectures along with [...]

23. [Iterative & bursty v.s Upfront & serialzed « Computing
    Life](http://computinglife.wordpress.com/2008/09/15/iterative-bursty-vs-upfront-serialzed/)
    on September 15th, 2008 5:36 am

    [...] quality of implementation and the unpredictability of the
    final system behavior, grand plans with upfront designs are most
    often than not doomed to fail. The industry knows this too but still
    follows this [...]

24. william on September 27th, 2008 3:27 am

    I wish Doctor Feynman were still alive so that he could analyze the
    alleged necessity of the “Bernanke/Paulson bailout!”

    I know economics is not his field in a sense but even as I write
    that I realize that his way of thinking is open to anything which
    needs to be understood.

    Isn’t it curious that Bernanke comes rushing to Bush to warn him in
    an authoritative manner that their is a crisis which demands
    immediate action or else terrible things will happen. Bush so
    readily agrees to the Bernanke proposal without any attempt to
    question or understand.

    I have always been an admirer of Richard Feynman as a hero of
    science. There have been many others throughout the history of
    science, men and women of independent mind. Galileo and Giordano
    Bruno come to mind, Darwin and Mendel, Maxwell and Tesla. In the
    realm of economics, which is not my field either, I will name Carl
    Menger, Eugen von Bohm-Bewerk, Friedrich von Hayek and Ludwig von
    Mises.

    I want you to know that when I was stationed in the military in
    Korea in 1970 I encountered two officers who were both Ph.D.’s in
    Economics from Harvard who were finishing their tours of duty in
    Korea and about to return to the states. I asked them if they had
    heard of Samuelson, Keynes, Galbraith and Heilbroner, who were the
    writers of the textbooks or exponents of the theories being taught
    in Economics throughout the American universitiesa and colleges. Of
    course they knew them all. But neither of them were at all familiar
    with Menger, Bohm-Bawerk, Hayek or Mises!

    I only knew of them because I had read Ayn Rand’s The Objectivist
    Newsletter after Atlas Shrugged, her insightful novel. In the
    Objectivist Newsletter Rand had book reviews including reviews of a
    few of the works of Ludwig von Mises, the great Austrian economist,
    who was a student of the founder of the Austrian school of
    economics, Carl Menger. Menger was an academician who lived in the
    Nineteenth Century and set out to discover the Laws of the
    Marketplace, how the market operated when the government did not
    intervene, rather made sure no one violated contracts or used force
    or fraud.

    The Austrian school of the free market is one of the best kept
    secrets in academia by those who have an agenda! There are those who
    do not want it widely taught or understood. It does provide insight
    into the happenings throughout our history of such events as the
    Great Depression. We are led to believe that the Great Depression
    was caused by a failure of the free market and that Roosevelt
    rescued the country by his brilliant interventions.

    The Federal Reserve System was created in 1913 for the purpose of
    maintaining the stability of the dollar. Notice that it now takes
    one dollar to have the purchasing power of just four cents of the
    1913 dollar!\
     Is it possible that interventions by the Federal Reserve System set
    the stage for the depression by causing the easy credit throughout
    the Twenties and that Roosevelts interventions prolonged the Great
    Depression? Is it possible that Bernanke’s Federal Reserve is
    responsible for the credit collapse now and that his solution would
    gloss over the Federal Reserve’s responsibility in causing the
    crisis in the first place and perpetuate the problem and exacerbate
    it in the process?

    There is a website entitled Ludwig von Mises Institute where you
    might find discussion of these issues in a most lucid and rational
    fashion as well as books which provide the understanding of the
    issues involved. [http://www.mises.org](http://www.mises.org)

    Murray Rothbard has written The Case Against the Fed which provides
    insight into the origins of the Federal Reserve System and its
    operations and role in history.

    Ron Paul is an advocate of the Austrian theory of economics and has
    argued for all his years as a Congressman for abolition of the
    Federal Reserve System and introduction of sound money as a
    competing currency to the Federal Reserve Notes wer are obliged to
    use by the legal tender laws.

    [http://www.ronpaul.com](http://www.ronpaul.com)\
     [http://www.campaignforliberty.com](http://www.campaignforliberty.com)

    Enjoy! Join us in restoring our Constitutional Republic. I don’t
    agree with Ron Paul on everything. For example I am pro choice and
    unfortunately his religious views interfere with his thinking on
    that issue.

    [http://www.fff.org](http://www.fff.org)\
     [http://www.fee.org](http://www.fee.org)

    Here is a link to the Atlas Society which promotes the ideas of Ayn
    Rand. I searched and found references to Richard Feynman there:

    [http://tinyurl.com/3k8egc](http://tinyurl.com/3k8egc)

    Enjoy and discover!

25. [On software testing - Blog of Leonid
    Mamchenkov](http://mamchenkov.net/wordpress/2008/11/03/on-software-testing/)
    on November 3rd, 2008 6:38 am

    [...] Found via Richard Feynman, the Challenger Disaster, and
    Software Engineering. [...]

26. Ahmed on November 4th, 2008 3:25 pm

    The key point here is an attitude of ‘highest quality’\
     Process is testing are useless without it.

    I once worked for a major telecom vendor which had all kinds of code
    reviews, unit testing, system testing… but they started treating
    engineers like replaceable parts. As if any engineer can work on a
    system they haven’t even worked on and make changes. Oh how it all
    collapsed from there.

    There is actually one big item that actually come from academia
    itself which lend to this behavior.

    ​1. design vs implementation. Now I know what this means in the
    academic sense. I can ‘design’ an algorithm in pseudo-code or
    flowcharts… and then implement it in a specific language like C.
    However, far too often, this seems to get misinterpreted as the
    implementation is like construction. A dummy’s job. When in fact,
    the compiler is the implementor and every thing is design. One is
    just abstract design, the other is low-level design. I always say,
    if you can write a design so specific that any idiot can implement
    it, you have something just as complicated as code.

    The other is people not valuing experience in a specific domain /
    area of code. This is largely a consequence of a hacker mentality.
    Some pieces of software are literally millions of lines long. They
    have the complexity that probably outweighs the human body. Yet, we
    send doctors to school for years upon years to specialize in only
    one area of the human body. For engineers, many places throw them in
    and they’re doing ‘surgery’ within a week. Ponder that for a second.
    Sometimes you have to pay someone just to know the code/domain even
    if there is not that many changes. So that when changes need to be
    made, they are ready and know the system inside out.

    I’ll use the analogy of the bomb with wires. Which wire do you cut
    to diffuse the bomb? Leave it up to a rookie and maybe they will
    figure it out, maybe they won’t. All the while, the clock is ticking
    and maybe the bomb will actually explode! Or you can pay an expert
    who knows about that bomb so that when a bomb shows up, they know
    exactly which wire to cut and you know there will be no issue.

    Payment is like this:\
     1 dollar for me to cut the wire\
     10000 dollars for me to know which wire to cut.

    Often times business only value the time you’re cutting wires.

27. [Thinking Like an Engineer « Pari’s
    TechBlog](http://matrix108.wordpress.com/2008/12/17/thinking-like-an-engineer/)
    on December 17th, 2008 1:34 am

    [...] Richard Feynman, the Challenger Disaster, and Software
    Engineering [...]

28. [ref](http://www.2frogmedia.com/Books/details/32091.html) on
    December 31st, 2008 8:50 am

    It’s interesting how many different areas of thought Richard Feynman
    has influenced

29. Abhijith on January 28th, 2009 8:46 am

    Great post! I came across you blog today and I am not able to move
    away from the page
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)
    . Looking forward to read all your articles.

30. [Gustavo Duarte](http://duartes.org/gustavo/blog) on January 28th,
    2009 9:02 am

    Abhijith: thanks
    ![:)](http://duartes.org/gustavo/blog/wp-includes/images/smilies/icon_smile.gif)

31. Luiz Carlos de Almeida on March 23rd, 2009 11:09 am

    Luiz Carlos de Almeida –
    [luiz1611@hotmail.com](mailto:luiz1611@hotmail.com)\
     ANÁLISE DOS DIAGRAMAS DE FEYNMAN

    Diagramas de Feynman (Baseia os cálculos na Teoria de Campos):\
     “Os Diagramas de Feynman são um método para se fazer cálculos na
    Teoria quântica de campos, criados pelo físico norte-americano
    Richard Feynman. Também são conhecidos por Diagramas de Stückelberg.
    As linhas representam partículas interagindo e termos matemáticos
    correspondem a cada linha e vértice. A probabilidade de uma
    determinada interação ocorrer é calculada desenhando-se os diagramas
    correspondentes à interação, e através deles se chega às expressões
    matemáticas corretas. Os diagramas fornecem uma interpretação visual
    do fenômeno.”

    Críticas aos Diagramas de Feynmam (Teoria de Campos da Física
    Quântica):

    A matemática consegue provar muitas coisas que não são realidade,
    basta para isto, serem criadas constantes, ocorrerem deduções,
    renormalizações, sendo que, não basta ser real, para que alguma
    fórmula o torne explicável. É o que acontece com os Diagramas de
    Feynman, consegue-se prová-los matematicamente, somente não se
    consegue provar o que eles tentam representar.\
     Não é de se estranhar que houve uma explosão de fórmulas para
    explicar formalismos. Os Diagramas de Feynmam, não são
    representativos da realidade. Analisando todos os Diagramas de
    Feynmam, todos se mostram equivocados. Será demonstrado, os enganos
    do diagrama (interações elétron/posítron). Outros diagramas estão
    sendo contestados pelas demais explicações, baseadas no novo modelo
    nuclear.

    Diagrama de Feynman para a interação elétron/posítron:

    A explicação da Teoria quântica de campos:\
     “Neste diagrama de Feynman, um Elétron e um Posítron anulam-se,
    produzindo um fóton virtual, que se transforma num par
    quark-antiquark. Depois, um deles radia um Gluón. (O tempo decorre
    da esquerda para a direita.)”

    Críticas a este Diagrama de Feynman e à sua explicação:

    Como os princípios da Teoria da Eletrodinâmica estão equivocados, os
    diagramas correspondentes às interações que elas representam, para
    se chegar a expressões matemáticas corretas, só podem chegar,
    também, a conclusões equivocadas da realidade destas interações das
    partículas, pois, é de se observar que a explicação para o Diagrama
    de Feynman não condiz com o que ocorre na realidade.

    A Nova Explicação:\
     O termo “Aniquilação” não é apropriado para este evento, pois as
    energias elementares, tanto positiva quanto negativa, não se
    aniquilam e também não se perdem, apenas se transformam.\
     Como o elétron e o posítron são partículas duais (cada um com 02
    energias magnéticas), ocorre uma interação em que o elétron perde 01
    energia magnética com seu campo de massa (neutrino) e o posítron
    perde 01 energia magnética com seu campo de massa (antineutrino),
    cada um com uma energia cinética de 0,255 MeV (com um total de
    0,511MeV de energia Cinética).\
     Restando 01 Energia magnética negativa do elétron e 01 energia
    magnética positiva do positron (sem seus campos de massa), que forma
    a radiação eletromagnética (y) de 0,511 MeV de Energia cinética.\
     Quando esta radiação eletromagnética choca-se com o núcleo, atinge
    metade do elétron e metade do posítron que estão na formação dos
    Nêutrons e Prótons do Núcleo atômico, ocorrendo o processo de
    Reflexão das Radiações eletromagnéticas de alta velocidade.\
     Assim, não ocorre a Anulação (Aniquilação) do elétron e do
    posítron, não ocorre a formação de um fóton virtual, não ocorre a
    sua transformação em um quark e em um anti-quark, e depois um deles
    não irradia um Gluón como prediz a explicação do Diagrama de
    Feynman.

    Esquematização do evento das interações elétron/posítron, pelo Novo
    Modelo Nuclear:

    A TEORIA DA ELETRODINÂMICA QUÂNTICA (E.Q)\
     A teoria:\
     “As forças eletromagnéticas entre dois elétrons surgem pela emissão
    de um fóton por um dos elétrons e a sua absorção por outro elétron.\
     Como um elétron emite um fóton, isso significa a violação do
    princípio da conservação das energias ou da conservação dos
    momentos; o mesmo vale para a absorção de um fóton. Todavia, pela a
    mecânica quântica, a conservação de energia não é necessariamente
    válida em pequenos intervalos de tempo. O sistema pode “pedir
    emprestada” alguma energia para o elétron emitir o fóton; a energia
    é devolvida quando o outro elétron absorve o fóton. Este processo é
    chamado de troca virtual de um fóton entre elétrons.\
     Neste processo, chamado de espalhamento de elétrons, ocorre
    mudanças na trajetória dos elétrons pela simples “troca de um
    fóton”. Esta é uma das idéias básicas da eletrodinâmica quântica.\
     Este fenômeno é representado pelo diagrama de Feynman e explicado
    por expressões de matemática corretas, baseadas neste diagrama”.

    Críticas à Teoria da Eletrodinâmica Quântica (E.Q.)\
     As radiações eletromagnéticas não surgem por acaso, pois, surgem da
    união entre um posítron e um elétron e este processo acontece em
    quase sua totalidade em núcleos de átomos, e também, as radiações
    eletromagnéticas não são absorvidas, pois a energia elementar
    negativa unida à energia elementar positiva, durante os processos de
    propagação e de reflexão não se altera, somente altera a sua energia
    cinética (sua velocidade).\
     O elétron da eletrosfera não emite, por si só, qualquer energia
    eletromagnética, ele apenas interage nos processos de propagação
    destas radiações, então, quando a teoria eletrodinâmica diz que, na
    física quântica o princípio da conservação da energia ou da
    conservação dos momentos, não é necessariamente válida, em pequenos
    intervalos de tempo, e que o sistema pode pedir emprestado alguma
    energia para o elétron emitir o fóton e que a energia é devolvida,
    quando outro elétron absorve o fóton, em um processo de troca
    virtual de um fóton entre elétrons, fica claro, que esta idéia
    básica da Física Quântica, além de não ser a realidade dos fatos,
    como explanado neste trabalho sobre como acontece a propagação e a
    reflexão das radiações eletromagnéticas, ainda colocou como sua base
    científica, uma interpretação equivocada da realidade dos
    acontecimentos a nível atômico, elegendo os elétrons como emissores
    das radiações eletromagnéticas. O diagrama de Feynmam, para este
    evento, também está errado.

    TEORIA DA CRONODINÂMICA QUÂNTICA (C.D.Q)\
     A Teoria:\
     “A Teoria da Cronodinâmica Quântica é parecida com a Teoria da
    Eletrodinâmica Quântica em alguns aspectos (as interações se dão
    através da troca virtual de quanta). No entanto, existe uma
    diferença fundamental: o fóton, mediador da interacão
    eletromagnética, é eletricamente neutro; já o glúon, mediador da
    força nuclear forte (força colorida), é colorido. Por isso, eles
    interagem entre si, o que dá origem, nas equações da C.D.Q, a termos
    que não têm análogos na Eletrodinâmica Quântica. A Cronodinâmica
    Quântica comporta-se, então, de forma diferente de qualquer força
    conhecida.\
     A Cronodinâmica Quântica solucionou, então, o mistério do caráter
    da força entre os quarks, de uma forma que apresenta grande
    simplicidade, o que é fundamental para o sucesso de uma teoria.\
     Durante muito tempo pensou-se que entre as partículas da lista dos
    férmions fundamentais estariam o próton e o nêutron. Mas isso se
    revelou falso: os prótons e os nêutrons são formados por partículas
    mais básicas – os quarks.\
     Os prótons são formados por dois quarks up e um quark down,
    enquanto os nêutrons são formados por um quark up e dois quarks
    down. Os quarks up têm carga elétrica +2/3 enquanto os down têm
    carga -1/3.\
     Assim como a força entre os elétrons se dá através da troca virtual
    de fótons, os quarks estão ligados por uma força que surge da troca
    de glúons. Os glúons são indiferentes ao sabor, mais muito sensíveis
    à cor. Os glúons interagem com a cor assim como os fótons interagem
    com o sabor. Note que existem vários tipos de glúons, um para cada
    situação de cor.” 1-

    1-Explicação Original para este Diagrama de Feynman:\
     Neste Diagrama, um quark vermelho se torna azul com a emissão
    virtual de um glúon vermelho-azul, que é absorvido por um quark azul
    que se torna vermelho!!!.

    2-

    2-Explicação Original para este Diagrama de Feynman:\
     Neste Diagrma, um quark azul se torna verde com a emissão virtual
    de um glúon azul-verde. Este glúon é absorvido por um quark verde,
    que se torna azul!!!.

    Críticas à Teoria da Cromodinâmica Quântica (C.D.Q)

    Como na explanação anterior, esta troca virtual de fótons, não
    acontece na realidade.\
     Quanto ao Gluón, não exite emissão virtual de gluón, pois, a força
    de união (força forte), que ocorre entre os pósitrons e elétrons nos
    Nêutrons e Prótons não dependem de mediador, já que é uma força de
    natureza magnética elementar, entre as partículas magnéticas
    negativas e as partículas magnéticas positivas.\
     Na realidade não existem Quarks. Existem elétrons e posítrons em
    união na formação dos Prótons e Neutrons. Esta união não ocorreu sem
    que houvesse muita força, para que não ocorresse o processo de
    “aniquilação” entre a matéria e antimatéria, e esta força foi a
    força gravitacional no interior de estrelas, onde estes prótons
    foram formados e a partir destes prótons, os nêutrons e assim todos
    elementos químicos, com um número bastante elevado de massa
    nuclear.\
     Como não há realidade na emissão virtual de gluóns, também os
    quarks foram uma criação, para explicar o que, ainda, não se tinha
    uma explicação. A teroria da cronodinâmcia é uma teoria baseada em
    idéias sem realidade, quando busca relação entre +2/3 de carga e
    –1/3 de carga e em trocas virtuais de gluóns.

32. Jim Patrick on September 4th, 2009 11:48 am

    I am having a difficult time understanding why the following is used
    to characterize top-down:

    *The Space Shuttle Main Engine was handled in a different manner,
    top down, we might say. The engine was designed and put together all
    at once with relatively little detailed preliminary study of the
    material and components.*

    Why didn’t the designers go into more in depth study of the parts
    during top-down design? Top-down design does not preclude this. In a
    ‘pure’ top-down design the various parts would have been fabricated
    to meet specifications. In a mixed top-down/bottom-up design the
    analysis from the top-down would be used to select appropriate parts
    that met specifications. So it appears to me that they both are
    important. Good article nevertheless.

33. [alan borcic](http://boweow.com) on October 9th, 2009 3:32 pm

    that was so cool what u did

34. [Kevlin Henney](http://curbralan.com) on November 1st, 2009 2:31 am

    One of the most important observations here is that your conclusions
    and observations are known, but commonly ignored. It is often said
    that software development is an immature discipline. However, what
    is normally meant by this is that software development is a youthful
    discipline lacking experience and knowledge. On the contrary, its
    pervasiveness and growth into all walks of life over many decades
    have ensured that there is a great deal of experience and
    accumulated wisdom. The immaturity is not in what we know, but in
    our failure to pay attention to and apply what we know. The
    immaturity is like that of an adolescent, not that of an infant.

35. anyone on November 1st, 2009 3:32 am

    forward chaining (bottom-up) VS backward chaining (top-down)?

36. Jan on November 1st, 2009 4:21 am

    Richard Feynman is my all time favorite scientist. His work on the
    Challenger investigation is documented in his book “What Do You Care
    What Other People Think”, a highly recommended read. Also check out
    “The Pleasure of finding things out” and the BBC documentary “No
    Ordinary Genius”.

37. Jan on November 1st, 2009 4:26 am

    Oh and Thanks for this excellent post!

38. [gsempe](https://www.twitter.com/gsempe) on November 1st, 2009 6:11
    am

    Great post. Fantastic post. A must read

39. Erin Ptacek on November 1st, 2009 8:05 am

    This is a truly excellent article. In my mind, I’ve often made the
    same comparisons using many years of experience in making clothing
    and costumes. To get a perfect garment, it’s necessary to make a
    muslin first, which is the top down part of the design. Then you
    take the muslin apart and use that as your base pattern for the
    finished garment — that’s the bottom up design. Obviously muslin is
    cheap, and rocket engine parts are not.

    My experience just doesn’t have the same cred as Feynman — who is a
    life long hero of mine, and you’ve just reminded me of one reason:
    genius is something of recognizing fundamental patterns that can be
    applied to multiple disciplines (though, IMO, these disciplines are
    not as disparate as most people seem to think).

40. [realist](http://www.baconsucks.com) on November 1st, 2009 11:02 am

    Many coders reflexively advocate bottom-up design because they are
    aware, either overtly or subliminally, that they are very low down
    on the pecking order within corporatocracies and bureaucracies. It’s
    a sad-but-true fact of life that those with real power within these
    organisations tend to be those from higher social classes than the
    bulk of programmers, with more family connections, and with a
    broader liberal education encompassing business, sales, marketing,
    law and politics. They are thus more equipped to engineer the real
    aspects of organisation success, which revolve around the
    development of power.

    I’ve worked in small organisations, like start ups, where coders
    have been, for a while, the driving force. An exclusively bottom-up
    approach works for a while but inevitably a point comes where the
    episteme encompassed by the organic code fails to scale beyond the
    narrow problem domain. That’s usually when the product managers step
    in (or are appointed as a new layer) to foist a top-down
    refactor/re-engineer approach. And everything gets paralysed for a
    couple of cycles. Apple’s been through this process with almost
    every wave of new products breakouts. Anyway, we need a smarter way
    to combine the strengths of both top-down and bottom-up, without
    just cycling through the weaknesses of both.

41. [Daily Links \#118 |
    CloudKnow](http://www.cloudknow.com/2009/11/daily-links-118/) on
    November 1st, 2009 12:08 pm

    [...] Feynman, Challenger Disaster, and Software Engineering [...]

42. [links for 2009-11-01 at DeStructUred
    Blog](http://www.joselise.com/wp/2009/11/02/links-for-2009-11-01/)
    on November 1st, 2009 6:38 pm

    [...] Richard Feynman, the Challenger Disaster, and Software
    Engineering : Gustavo Duarte (tags: engineering software programming
    design history physics article feynman agile) [...]

43. Phil Brass on November 2nd, 2009 9:53 am

    The adversarial IV&V process for systems design verification was
    actually in use at NASA in the 60s during the Apollo program.
    Furthermore, they apparently often hired the second-lowest bidder to
    do the IV&V testing, so there really was an adversarial
    relationship. And they supposedly didn’t ship until there no IV&V
    findings. I think this is a very good example of the proper use of
    security economics. But crediting Feynman for discovering TDD in
    1986 is a bit of a stretch IMHO. My source for this is the second
    edition of Ross Anderson’s book, Security Engineering.

44. [Richard Feynman, 挑战者号, 软件工程 | 酷壳 -
    CoolShell.cn](http://coolshell.cn/?p=1654) on November 4th, 2009
    1:19 am

    [...] 源文：链接  （本文主要根据挑战者号的问题，以及Richard
    Feynman那对NASA严厉的批评报告，批评了不适当的“自顶向下”的设计方法，并总结了一下软件工程和其它工程的相通的一些观点。翻译水平有限，欢迎指正）
    [...]

45. [Saulo Silva](http://saulosilva.com) on November 4th, 2009 6:00 pm

    Great post, Gustavo. I’m glad I found your blog.

    Cheers

46. [Jon Court](http://objectopia.com) on November 18th, 2009 6:59 pm

    Hi,

    Got this blog from a comment on a blog on my site – very glad it was
    pointed out.

    Awesome content – well written too.

    Thankyou.\
     Jon

47. Manish on January 22nd, 2010 1:16 pm

    Let me start by saying I have recently started reading your articles
    which I stumbled upon while searching for something on memory
    segmentation. I found that article, and others, to be really
    interesting not only because they had the needed technical insights,
    but also because you try to weave them into a story like writing.
    Count me in as a newer addition to your readership :)
     I am probably too late to comment on this artcile, but I will still
    try. I find that the responses are really interesting. I think I do
    understand your point about bottom-up approach and Austin’s comments
    about top-down approach. I can almost ‘see’ the two sides as I felt
    the same confusion when I went back to school to do my MS in
    Computer Science after more than 13 years in industry – there was
    total lack of those processes. I am sure you will say that academia
    and industry are very different, but let me tell you that working
    with such an approach I really enjoyed doing stuff, and could also
    see how other partners in project thought about things. Sure some of
    those could be called wild ideas, and I would not have tried them in
    the industry (am I sounding like a manager here?), but I was
    pleasantly surprised with the results many times. Even though the
    ideas were not best or the ones we should have picked, but they
    showed me a completely different path that could not have ‘seen’ it
    through just analysis.

    I personally like that kind of approach as I feel that is more
    innovative (think out-of-box). However, I do agree with Austin that
    current industry it is most of the time Top-down for design and
    analysis for all software engineering models including Agile
    development (although it sounds different). The (most obvious)
    reason I think lies in the effort to try to eliminate the
    uncertainty. It is a reality that all business work with deadlines
    and targets, and a complete bottom up approach, in my opinion, does
    not fit there completely. Lets face it, most business are not about
    innovation (except for trying new spins around the concept of
    management) but to sell things to customers. You would say, aren’t
    the two linked -innovation leading to more selling? They are not
    many times. They can actually work against each other in many
    situations, and innovation takes a back seat against any arguments
    about selling.

    I agree with the basic idea behind this article that the analysis
    and design are very important not just to finish things with in
    deadline (do the projects still meet the deadlines anyway?), but to
    provide a direction to the project, and to have an idea about the
    timelines. It should not be over-used in lieu of experimentation (as
    that will stifle the innovation).

    That is the reason I think that small companies/startups are
    innovative with minimal procedural bottlenecks, but as the size
    grows, the procedural steps (necessarily or not) creep in.

    I see this happen all the time at my workplace (not that we are a
    big corporation, but we would like to be one:)), when the ‘project’
    becomes the focus instead of the end product (although the managers
    will never accept that).

48. [Challenger Disaster & Software Engineering «
    DailyDigital](http://wms.to/DailyDigital/?p=82) on February 9th,
    2010 12:51 pm

    [...] Link [...]

49. Sarah on April 27th, 2010 7:38 pm

    Yes, this tradgic disaster was very heart breaking for many, and
    devastating to everyone. I bet all the people who had designed and
    made the shuttle Cahllenger had beat themselves up inside, blaming
    theirselves for the terrifyingly horrible accident.

50. [Anablog » Blog Archive » Nasa space exploration
    slideshow](http://blogs.cancom.com/elogic_1700000170/2008/07/30/nasa-space-exploration-slideshow/)
    on May 27th, 2010 10:42 am

    [...] trick where you looped the yo-yo around three times—it was
    called the John Glenn. Here is a good blog regarding the first
    Shuttle disaster. Here is more on the great physicist Richard
    Feynman’s observations on the crash, and why the [...]

51. [http://duartes.org/gustavo/blog/post/richard-feynman-challenger-disaster-software-engineering
    »
    andrewsavikas.com](http://www.andrewsavikas.com/uncategorized/httpduartes-orggustavoblogpostrichard-feynman-challenger-disaster-software-engineering/)
    on September 2nd, 2010 5:53 pm

    [...]
    [http://duartes.org/gustavo/blog/post/richard-feynman-challenger-disaster-software-engineering](http://duartes.org/gustavo/blog/post/richard-feynman-challenger-disaster-software-engineering)
    [...]

52. [Lastactionseo](http://woy.ch/lastactionseo) on September 27th, 2010
    3:00 am

    **Lastactionseo…**

    Vielen Dank für das freischalten des Kommentars….

53. Jane Qiu on September 29th, 2010 2:48 am

    Great articles!\
     I’m looking for some info about linux process management, and jumps
    to your blog. Your articles are the best I have ever seen, they are
    so intreasting and smart. Thanks for sharing them with us:)

54. [Lalitkumar Bhamare](http://www.teatimewithtesters.com) on January
    26th, 2011 12:51 pm

    This is a wonderful blog I have come across while trying to analyse
    The Appendix of Challenger Report by Mr.Richards Feynman.

    Appreciate the brilliancy of the way it has been explained in terms
    of software testing. Thanks.

    Regards,\
     Lalit

55. [L’approche ascendante versus ascendate « Projet dans un
    environnement
    graphique](http://www.formation-quebec.org/informatique/projet-graphique-reseau/analyse-top-down-et-bottom-up/lapproche-ascendante-versus-ascendate/)
    on March 1st, 2011 8:55 am

    [...] où on part en permanence de ce qui est bien connu et
    solidement maîtrisé. (Wikipedia).  Voici un article qui applique les
    conclusion de Feynman à l’ingénierie logicielle. Voici le rapport de
    Feynman en texte [...]

56. [Ler e aprender « Bit is
    Myth](http://bitismyth.wordpress.com/2011/03/25/ler-e-aprender/) on
    March 25th, 2011 6:00 pm

    [...] as duas dicas que vieram e se encaixaram como luva, estão na
    lousa do Richard Feynman que estão neste artigo. Coloco-as aqui por
    enquanto, mas estou pensando em mandar [...]

57. Brandon Frost on May 4th, 2011 6:41 am

    [...] as duas dicas que vieram e se encaixaram como luva, estão na
    lousa do Richard Feynman que estão neste artigo. Coloco-as aqui por
    enquanto, mas estou pensando em mandar [...]\
     Link [...]\
     Sarah on April 27th, 2010 7:38 pm\
     Yes, this tradgic disaster was very heart breaking for many, and
    devastating to everyone. I bet all the people who had designed and
    made the shuttle Cahllenger had beat themselves up inside, blaming
    theirselves for the terrifyingly horrible accident.\
     Anablog » Blog Archive » Nasa space exploration slideshow on May
    27th, 2010 10:42 am\
     [...] trick where you looped the yo-yo around three times—it was
    called the John Glenn. Here is a good blog regarding the first
    Shuttle disaster. Here is more on the great physicist Richard
    Feynman’s observations on the crash, and why the [...]\

    [http://duartes.org/gustavo/blog/post/richard-feynman-challenger-disaster-software-engineering](http://duartes.org/gustavo/blog/post/richard-feynman-challenger-disaster-software-engineering)
    » andrewsavikas.com on September 2nd, 2010 5:53 pm\
     [...]
    [http://duartes.org/gustavo/blog/post/richard-feynman-challenger-disaster-software-engineering](http://duartes.org/gustavo/blog/post/richard-feynman-challenger-disaster-software-engineering)
    [...]\
     Lastactionseo on September 27th, 2010 3:00 am\
     Lastactionseo…\
     Vielen Dank für das freischalten des Kommentars….\
     Jane Qiu on September 29th, 2010 2:48 am\
     Great articles!\
     I’m looking for some info about linux process management, and jumps
    to your blog. Your articles are the best I have ever seen, they are
    so intreasting and smart. Thanks for sharing them with us:)\
     Lalitkumar Bhamare on January 26th, 2011 12:51 pm\
     This is a wonderful blog I have come across while trying to analyse
    The Appendix of Challenger Report by Mr.Richards Feynman.\
     Appreciate the brilliancy of the way it has been explained in terms
    of software testing. Thanks.\
     Regards,\
     Lalit\
     L’approche ascendante versus ascendate « Projet dans un
    environnement graphique on March 1st, 2011 8:55 am\
     [...] où on part en permanence de ce qui est bien connu et
    solidement maîtrisé. (Wikipedia). Voici un article qui applique les
    conclusion de Feynman à l’ingénierie logicielle. Voici le rapport de
    Feynman en texte [...]\
     Ler e aprender « Bit is Myth on March 25th, 2011 6:00 pm\
     [...] as duas dicas que vieram e se encaixaram como luva, estão na
    lousa do Richard Feynman que estão neste artigo. Coloco-as aqui por
    enquanto, mas estou pensando em mandar [...]

58. Lars Falk on May 4th, 2011 7:25 am

    Do you know who owns the copyright of the picture of Feynman’s
    blackboard?

    Best wishes,

    Lars

59. [Elegant Code » Book Review: The Clean
    Coder](http://elegantcode.com/2011/09/06/book-review-the-clean-coder/)
    on September 6th, 2011 2:58 am

    [...] disaster. This has been applied to the field of software
    engineering many times already (check out this blog post from
    Gustavo Duarte which is one of my all-time favorites), but still, it
    definitely never wears [...]

60. Shannon on December 11th, 2012 6:02 pm

    To revive this old thread, there is one thing I see in Feynman’s
    writings about the Challenger investigation from his book “What Do
    You Care what Other People Think?” that I believe touches on
    something important to testing, but that I seldom see cited in
    software testing articles that refer to the Challenger incident, or
    Feynman’s report.

    If I have it right, Feynman suspected that the O ring failure
    occurred where the technicians were testing the rings! That is, the
    leak occurred around the test port. This isn’t to say he faulted
    testing, and there are perhaps some issues that don’t translate
    neatly from the domain of physical manufacture to digital
    development. But I do think it is a cautionary tale to remember to
    account for test code, performance probes, etc that pass from the
    development into production. I could see how remnants of these
    things could potentially work against product quality.

61. [Gustavo Duarte](http://duartes.org/gustavo/blog) on December 13th,
    2012 5:32 am

    @Shannon: that’s really interesting. I haven’t read that book yet,
    I’ll add it to the queue here. Thanks for your comment.

62. [Richard Feynman, 挑战者号, 软件工程 |
    multiprocess](http://www.multiprocess.net/?p=283) on November 10th,
    2013 1:29 am

    [...] 源文：链接  （本文主要根据挑战者号的问题，以及Richard
    Feynman那对NASA严厉的批评报告，批评了不适当的“自顶向下”的设计方法，并总结了一下软件工程和其它工程的相通的一些观点。翻译水平有限，欢迎指正）
    [...]

63. Corey Bayless on November 16th, 2013 8:47 pm

    This is why I freaking love the Internet. I am currently watching
    “The Challenger Disaster” right now. The disaster happened when I
    was a junior in high school, in drafting class. Most people in the
    class were crying and our teacher said, “I was in class in high
    school when Kennedy was assassinated. I never thought I’d have the
    same experience in a classroom 23 years later…”

    What a wonderful article to read. I know I’ll be reading about
    Feynman for the rest of the night. Thank you for the great read…

64. Randy on December 15th, 2013 4:14 pm

    As a licensed engineer in control systems and now a project manager;
    I have put software to work to solve many control problems. I agree
    with Dr. Feynman if you do not understand the problem you cannot
    solve it. To that end one must first understand the problem, define
    the scope or goal… the top, to achieve the goal you must bring to
    the detail knowledge to bear to build the solution… the bottom,
    without one you cannot have the other. When one out weights the
    other the solution achieves neither.
