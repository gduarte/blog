---
title: iPhones, Armed Robbery, and Hacking
date: 2018-01-17 11:45:00 -0700
categories:
- [security]
- [personal]
---

(Some security recommendations are summarized at the [end](#recommendations).)

### I. The Robbery

This past summer I was walking around in the neighborhood where I grew up,
happy-go-lucky, when some guy jumped off a motorcycle pointing a gun at me. It
was my first time at gunpoint, and from the outset the weapon was positively
spellbinding.  As I gazed at it, strange thoughts hit me: "Am I going to get
shot by this rusty piece of shit?  What a sorry way to die! And what if I get
tetanus?"

Those were thoughts I wouldn't have anticipated, but as Dan Carlin says, humans
in extreme situations often behave unexpectedly.  And while a gun-toting thug is
a far cry from the Battle of Verdun, it is pretty extreme for me. This post
tells the story of the robbery and its surprising information security
developments. There are lessons here for both users and designers of technology.

![Robbery scene](img/misc/iphone-robbery/robbery.jpg
"Everybody be cool, this is a robbery!")

My daughter and I were visiting Brazil in July, taking a carefree walk in
a boulevard lined with lush trees.  She had just gotten into "good kid, m.A.A.d.
city", ironically enough an album about growing up in Compton amid dire
violence. So we were deep in conversation about the US criminal justice system,
drug laws, and the ideas of people like Bryan Stevenson and Michelle
Alexander[^criminal-justice].

Growing up in Brazil you get a crash course in street smarts. I was mugged twice
as a 10-year-old and once at 15.  That's counting only the times when stuff was
actually taken. There were scores of near-muggings I dodged by either talking my
way out or running my way out.

But after 20 trouble-free years, I let my guard down. Absorbed in conversation,
I barely noticed the motorcycle driving on the other side of the street. By the
time it veered the wrong way into traffic and sped towards the sidewalk we were
on, it was too late.  The passenger jumped out while the motorcycle was still
moving, gun in hand pointed squarely at me.

The scene felt strangely removed - it's cliche, but it really did feel like
a movie. Instead of panicked confusion, there was a strong pragmatic voice in my
head. I had thought about "what if" scenarios plenty of times before and they
kicked in. Who is the attacker? What is their motivation? What's the best course
of action?

There are career criminals in Brazil who are downright *professional*.  I know
somebody whose house was invaded while they were home and the robbers let them
know how long the "job" was going to take, offered them water, and made sure
nobody freaked out.  Better than some moving companies I've used.

But when someone is robbing random people on the street using a *gun*, that's
pretty far from professional. Way too volatile a situation with huge risks and
beggarly payoff. These were at best lowlifes and at worst jittery crackheads.
I felt two strong imperatives. First, keep the situation as absolutely relaxed
as possible. When they get nervous, they get scared. And when they get scared,
that's when I accidentally get shot. But second, and more importantly: if they
want to kidnap my daughter, fight it at any cost whatsoever. Better to die on
that sidewalk than to let them take her.

I remember thinking, "take a deep breath, raise hands slowly, move smoothly,
stay relaxed, hand everything over."  It worked. Who knows, maybe Andy from the
Headspace app saved my life. The bandits were gone, along with our two iPhones
and my watch. But the real fun was still to come.

After we got home, I logged into iCloud and put both phones in lost mode. They
had been turned off, predictably. Plenty of crooks have been caught by way of
"Find iPhone," but they've learned by now. Thinking of my data in criminal hands
was uncomfortable, but the fact that iOS exploits [sell for $1.5
million][zerodium] made me feel a lot better. No small-timer is breaking into an
iPhone. I figured they would wipe it out and sell it.

I have two-factor authentication in all the accounts that matter, and whenever
possible my second factor is an iPhone app that generates time-based one-time
passwords ([TOTP]) for authentication. Google Authenticator is a popular app for
this, but I use [OTP Auth] instead because it is more flexible (more on this in
the recommendations).  Here's what it looks like, slightly sped up to make it
more exciting:

![Time-based one-time passwords](img/misc/iphone-robbery/otp-auth.gif
"Time-based one-time passwords")

When it's time to log into one of your accounts, you provide your login and
password as you normally would, plus the temporary code being shown by the app.

I also use a password manager with unique, long passwords for each site.  So my
main concern at that point was minimizing the impact of this whole thing on my
kid.  We had dinner planned with friends, tasting menu at a good Japanese place,
so I thought it best to go, have a good time, laugh and hopefully cushion the
blow. Later I could call T-Mobile and suspend the cell lines.

### II. The Hacking

A couple of hours later we were back, much happier, imbued with friendship and,
in my case, plenty of sake. I opened Gmail and got some shockers:

![Facebook password reset email](img/misc/iphone-robbery/unfortunate-emails.png
"A flurry of unfortunate emails")

Wuh-wait what? I wasn't expecting to see any of these, but least of all the
Facebook password reset. Before you read on, take a good look at those emails.
It's fun to work out what happened here. Done? Let's dig in:

![Facebook password reset email](img/misc/iphone-robbery/fb-pw-reset-email.png
"Facebook password reset")

Whoah! Facebook password reset by phone number? How? Did they unlock my phone?
But also... why? At once I felt the sinking realization I misread the situation.
They seemed to be more sophisticated that I thought - not the motorcycle crew
themselves, but someone else in the operation (his identity would be unmasked
later that night).

The idea that somebody was hacking into my accounts *right at that moment*, with
*my phone* in hand, was deeply unsettling. A malevolent twist to the emotional
roller coaster of that evening.  But this was a technical problem, so it was
time to sober up as best as I could and work methodically.

The "how" was simple. The attacker took the SIM card out of the stolen iPhone
and put it in another phone. At that point he found out my phone number, whereas
previously he had no information on me. More importantly, he could also receive
my SMS text messages. He then attempted to log into Facebook using my phone
number as a login, clicked on "Forgot Password," and reset the password via SMS.

So here is a big screw up and a couple of lessons. As I said, I have 2FA
(two-factor authentication) in the accounts "that matter." But I rarely use
Facebook, so I didn't enable 2FA there. Oops. Turns out it's not such a great
idea to have an account in the world's most popular app as a weak link in your
defenses.

Now consider Facebook's account recovery policies. If the account has 2FA
enabled, passwords can only be reset by email. That's good. But *without* 2FA,
if an account has an associated phone number, the password can be reset via SMS.
In such a case, a SIM card is an instant ticket to the account: find it and
reset its password in one fell swoop.

That's a disaster. Facebook single handedly provides a way for attackers to go
from a SIM card, or hijacked SMS messages, to a trove of personal information
for the vast majority of people out there. By contrast, attackers made zero
progress in hacking my kid's accounts, mostly because she doesn't use Facebook.

But why the hell was this wretch logging into my FB account? I suspect it wasn't
for my cousin's mad political rants. Already shaken from the armed robbery,
my mind played tricks on me as paranoid thoughts of identity theft and
fraudulent bank transfers loomed.

I immediately logged into t-mobile.com and suspended both cell lines, disabling
the attacker's main weapon. As an aside, T-Mobile has been great for
international travel. I love you guys, keep your website safe.  I tested sending
SMS messages to my suspended numbers and happily all attempts generated errors.

On to the other emails. The Facebook password reset arrived at 9:46pm Brazil
time. Curiously, at 11:23pm they briefly turned my phone back on with its SIM
card, and the phone went into lost mode and flashed on Find iPhone
[here][google-maps].  But then there is that fourth email with a subject line of
"iPhone SE 64GB Silver Was Found!" arriving at 12:20am. Here it is:

![iCloud phishing email](img/misc/iphone-robbery/icloud-phishing-email.png
"iCloud phishing attempt")

The phone model and storage capacity are exactly right. The spelling, grammar,
and layout are pretty well done. It was sent to my primary personal email,
lifted from Facebook. Imagine a regular user receiving this *right* after their
phone has been stolen, while they're somewhat shaken, and when they're not
native English speakers to boot. What are the odds they'll realize this is
a phishing attempt for iCloud credentials?

Apart from checking the URL, the biggest clue is the exclamation mark in the
subject line, a little too enthusiastic for Apple. Either way, this is a nearly
perfect phishing piece, made more so by impeccable timing.  Maybe iCloud
accounts should be placed in some sort of restricted state after a device is put
into lost mode.

It's stressful to face an ongoing, targeted, personal attack.  Deep breath
again. Time to methodically check every account for suspicious activity, change
passwords just in case, and recover compromised accounts. My main Google
account, protected by 2FA, was safe throughout the ordeal.  I reset my Facebook
password by email and got back in. GitHub, AWS, and other professional accounts
were also on 2FA and had no unauthorized activity. Audit logs never tasted so
sweet.  It was a relief knowing I wouldn't have to tell clients, "Hey, how are
you? Great!  So, listen, this iPhone thieving ring probably has all your data,
isn't that funny? Hah! But never mind that! Those Bitcoin prices, huh?"

Then I tried a secondary Gmail account I use for some mailing lists and other
non-critical tasks. You know... the kind of account for which one might leave
2FA disabled. Sure enough, the wretch had been there, and the password was
changed via SMS password reset. And he only *found* the account by the phone
number in the first place. Familiar? Here's a quick recap:

![SMS hacking diagram](img/misc/iphone-robbery/sms-hacking-diagram.jpg
"SMS hacking diagram")

This Gmail account did not have a recovery email set up, and ironically
I couldn't use SMS anymore. Google offers a recovery algorithm where you try to
answer different questions with the ability to "Try another way" if you don't
have a particular answer (quick: in which month and year did you create your
Google account?). I was locked out for a while, long enough to start thinking
I had lost the account, but eventually produced a couple of answers and got back
in.

Finally, all of my accounts were safe again. It was getting late, but I had to
find out why this person was frantically probing my accounts, and maybe, with
some luck, who they were.

I knew the data in the iPhones was safe, as per the Apple vs. government
showdown after the San Bernardino terrorist attack. But earlier I had assumed
the phones could still be wiped clean and used normally. But maybe they
couldn't, and this whole rigmarole was about breaking into my iCloud account.
Hence the phishing.

A quick search confirmed the idea. Since iOS 7, released in 2013, Apple has
provided the Activation Lock feature, whereby if a device is linked to an iCloud
account, activating it requires the password to that account. This has created
some misery among people buying and selling used iPhones: if the seller forgets
to unlink the device from their iCloud account, the device is bricked until they
do so.

A warm wave of righteous schadenfreude washed over me: all the robbers had were
parts! They would fetch little money from this whole thing, especially since my
kid's screen was cracked. You go, kid! Glad I hadn't replaced it yet.  Also glad
for activation lock, though perversely my digital torment was its side effect:
the world is complicated. It turns out there was no sinister plot, just
a miserable scheme for a few hundred dollars.  Straight to the depths of hell is
where those cowards going.

It was sobering to realize the attacker *almost* succeeded. Up until a few
months prior to the robbery, my iCloud account did not have 2FA enabled and it
used the compromised Gmail address as the recovery email.  If the robbery had
happened then, they would have been able to get in, unlink the phones, and sell
them at full (used) price. They would have changed my iCloud password in the
process, and might have erased and locked my *other* Apple devices for the hell
of it, which would have been disastrous and possibly ruinous, depending on
whether I could get back into the account.  Whatever little data I have in
iCloud would have been stolen as well.

I hope this motivates you to enable 2FA on *all* of your accounts, even the
unimportant ones. They can interact in incremental and unexpected ways to become
your undoing.  Moreover, using TOTP apps as the second factor is far safer than
SMS.

Apple has done a fantastic job with iOS security and Find iPhone, curbing
everything from malware to exploits to theft.  But further improvements can be
made to better protect its customers.  In the next post you'll see week-long
sustained hacking attempts and meet the maggot behind the attacks, operating in
a wretched hive of "iPhone unlockers."


<a name="recommendations"></a>
### III. Recommendations

* Make sure your accounts cannot be hacked via text message (SMS) password
  resets. You can often do so by enabling two-factor authentication (2FA) for an
  account, particularly if you use a time-based one-time password (TOTP) app
  as the second factor. Two such apps are Google Authenticator and [OTP Auth].
  You could also withhold your phone number from certain accounts.  Another
  advantage of TOTP is that if you're unable to receive SMS messages for
  whatever reason, you can still log in.

* Beware of your unprotected "less critical" accounts. They might provide a path
  to your sensitive ones.

* If you decide to go with a TOTP app, choose one that allows you to make an
  encrypted backup of your account secrets. [OTP Auth] provides that along with
  encrypted iCloud sync, all optional and controlled by the user. [Authy] is
  another good option. If you use Google Authenticator, make sure losing your
  phone won't lock you out of any accounts.

* If you design apps, be careful with password resets via SMS. SIM cards are an
  easy target, cell providers are subject to social engineering that could lead
  to intercepted messages[^t-mobile-bug], and SMS notifications can be seen on
  lock screens in most phones.  Allow users to choose TOTP as a second factor.

* If your iPhone is lost or stolen, go to iCloud.com immediately, put it in lost
  mode, and provide a phone number where you can be reached. Once you've done
  that, you might want to temporarily suspend your phone line (many carriers
  offer this on their websites). If you do so, you can no longer call your own
  phone, and unless it's on wifi, you also can't "Play Sound" or "Erase iPhone"
  via iCloud - keep that in mind. On the upside, nobody can use your SIM
  card to hack your accounts via SMS password reset. It's a trade-off.

* If your iPhone is definitely stolen, rather than lost, it will probably appear
  off in iCloud.  Put it in lost mode anyway. If you provide a phone number,
  know that it might be targeted for iCloud phishing or social engineering as
  crooks try to hack into your iCloud account (that's why the attacker briefly
  turned my phone on: to get a phone number to target). You almost surely want
  to suspend your cell service immediately. You lose the tracking and other
  goodies, but thieves generally know to keep the phone off, and handing them
  a working SIM card is fraught with peril. Tread carefully and may the force be
  with you.

* You might want to protect your SIM card with a PIN. This requires you to enter
  the PIN whenever you turn your phone on. Attackers are thus unable to
  transplant your SIM card to another device and use it. However, if you lose
  your iPhone and the battery dies, or the person who finds it turns it off,
  it's game over. Even if the phone is later turned on, it won't connect to
  the Internet, enter Lost Mode, show a phone number where you can be reached,
  or "Play Sound" (this is true even if a known wifi is in
  range[^passcode-for-wifi]). A phone that otherwise might have been found could
  be bricked and lost forever.

* Beware of "Your iPhone was found" emails, text messages, and Whatsapp
  messages. Scammers attempt to phish for your iCloud credentials in devious
  ways *soon* after an iPhone is stolen. If you provided a lost mode phone
  number, thieves will attempt to use it against you while trying to break into
  your iCloud account.

* Read Tech Solidarity's [security guide]. It's overkill for a regular user, but
  know the rules before breaking them.

Thank you for reading.

[^criminal-justice]: If you're interested in US criminal justice,
  [Ghettoside] is a great book with better-than-fiction LA detective stories
  interwoven with a serious discussion of criminality, murder clearance rates,
  and other pressing topics.  [The New Jim Crow] by Michelle Alexander is an
  interesting read on mass incarceration, while Bryan Stevenson's [Just Mercy]
  offers a piercing look at the injustices we sometimes create.  Ezra Klein has
  a [good interview][bryan-stevenson] with Stevenson.  Glenn Loury's
  [interview][glenn-loury] with Sam Harris offers a somewhat different
  perspective.

[^t-mobile-bug]: VICE [reported][vice-t-mobile-bug] on a T-Mobile website bug
  that leaked personal data based based on phone number alone, giving social
  engineers a leg up. But this type of attack has worked against multiple
  carriers all over the [world][guardian-sim-swap]. Prominent [hacks]
  [wired-deray-hack] have happened this way.

[^passcode-for-wifi]: You can try this at home: turn your iPhone off and back
  on. Until the passcode is entered at least once, it won't connect to wifi. See
  [this][jamf-passcode-for-wifi]. If you have a better link, please let me
  know.

[zerodium]: https://www.zerodium.com/program.html

[OTP Auth]: https://itunes.apple.com/us/app/otp-auth-2step-auth-for-pros/id659877384

[TOTP]: https://en.wikipedia.org/wiki/Time-based_One-time_Password_Algorithm

[Authy]: https://authy.com/

[google-maps]: https://goo.gl/maps/CWanq1At1ez

[wired-deray-hack]: https://www.wired.com/2016/06/deray-twitter-hack-2-factor-isnt-enough/

[vice-t-mobile-bug]: https://motherboard.vice.com/en_us/article/wjx3e4/t-mobile-website-allowed-hackers-to-access-your-account-data-with-just-your-phone-number

[guardian-sim-swap]: https://www.theguardian.com/money/2015/sep/26/sim-swap-fraud-mobile-phone-vodafone-customer

[security guide]: https://techsolidarity.org/resources/basic_security.htm

[motherboard-dont-get-hacked]: https://motherboard.vice.com/en_us/article/d3devm/motherboard-guide-to-not-getting-hacked-online-safety-guide

[jamf-passcode-for-wifi]: https://www.jamf.com/jamf-nation/discussions/13523/enable-wi-fi-on-device-locked-with-passcode

[The New Jim Crow]: https://www.amazon.com/New-Jim-Crow-Incarceration-Colorblindness/dp/1595586431

[Just Mercy]: https://www.amazon.com/Just-Mercy-Story-Justice-Redemption/dp/081298496X

[bryan-stevenson]: https://soundcloud.com/ezra-klein-show/bryan-stevenson-on-why-the

[glenn-loury]: https://www.samharris.org/podcast/item/racism-and-violence-in-america

[Ghettoside]: https://www.amazon.com/Ghettoside-True-Story-Murder-America/dp/0385529996
