---
layout: post
status: publish
published: true
title: Motherboard Chipsets and the Memory Map
author: Gustavo Duarte
author_login: gduarte
author_email: gustavo-web@duartes.org
author_url: http://duartes.org/gustavo/blog
comments: false
wordpress_id: 22
wordpress_url: http://duartes.org/gustavo/blog/?p=22
date: 2008-06-04 13:00:06.000000000 -06:00
categories:
- Software Illustrated
- Internals
tags: []
---
I'm going to write a few posts about computer internals with the goal of
explaining how modern kernels work. I hope to make them useful to
enthusiasts and programmers who are interested in this stuff but don't
have experience with it. The focus is on Linux, Windows, and Intel
processors. Internals are a hobby for me, I have written a fair bit of
kernel-mode code but haven't done so in a while. This first post
describes the layout of modern Intel-based motherboards, how the CPU
accesses memory and the system memory map.

To start off let's take a look at how an Intel computer is wired up
nowadays. The diagram below shows the main components in a motherboard
and dubious color taste:

![Diagram for modern
motherboard](http://static.duartes.org/img/blogPosts/motherboardDiagram.png)
\
 Diagram for modern motherboard. The northbridge and southbridge make up
the chipset.

As you look at this, the crucial thing to keep in mind is that the CPU
doesn't really know anything about what it's connected to. It talks to
the outside world through its
[pins](http://en.wikipedia.org/wiki/Image:Intel_80486DX2_bottom.jpg) but
it doesn't care what that outside world is. It might be a motherboard in
a computer but it could be a toaster, network router, brain implant, or
CPU test bench. There are three main ways by which the CPU and the
outside communicate: memory address space, I/O address space, and
interrupts. We only worry about motherboards and memory for now.

In a motherboard the CPU's gateway to the world is the front-side bus
connecting it to the northbridge. Whenever the CPU needs to read or
write memory it does so via this bus. It uses some pins to transmit the
physical memory address it wants to write or read, while other pins send
the value to be written or receive the value being read. An Intel Core 2
QX6600 has 33 pins to transmit the physical memory address (so there are
2^33^ choices of memory locations) and 64 pins to send or receive data
(so data is transmitted in a 64-bit data path, or 8-byte chunks). This
allows the CPU to physically address 64 gigabytes of memory (2^33^
locations \* 8 bytes) although most chipsets only handle up to 8 gigs of
RAM.

Now comes the rub. We're used to thinking of memory only in terms of
RAM, the stuff programs read from and write to all the time. And indeed
most of the memory requests from the processor are routed to RAM modules
by the northbridge. But not all of them. Physical memory addresses are
also used for communication with assorted devices on the motherboard
(this communication is called [memory-mapped
I/O](http://en.wikipedia.org/wiki/Memory-mapped_IO)). These devices
include video cards, most PCI cards (say, a scanner or SCSI card), and
also the [flash memory](http://en.wikipedia.org/wiki/Flash_memory) that
stores the BIOS.

When the northbridge receives a physical memory request it decides where
to route it: should it go to RAM? Video card maybe? This routing is
decided via the memory address map. For each region of physical memory
addresses, the memory map knows the device that owns that region. The
bulk of the addresses are mapped to RAM, but when they aren't the memory
map tells the chipset which device should service requests for those
addresses. This mapping of memory addresses away from RAM modules causes
the classic hole in PC memory between 640KB and 1MB. A bigger hole
arises when memory addresses are reserved for video cards and PCI
devices. This is why 32-bit OSes have [problems using 4 gigs of
RAM](http://support.microsoft.com/kb/929605). In Linux the file
**/proc/iomem** neatly lists these address range mappings. The diagram
below shows a typical memory map for the first 4 gigs of physical memory
addresses in an Intel PC:

![Memory layout at boot
time](http://static.duartes.org/img/blogPosts/memoryLayout.png) \
 Memory layout for the first 4 gigabytes in an Intel system.

Actual addresses and ranges depend on the specific motherboard and
devices present in the computer, but most Core 2 systems are pretty
close to the above. All of the brown regions are mapped away from RAM.
Remember that these are *physical* addresses that are used on the
motherboard buses. *Inside* the CPU (for example, in the programs we run
and write), the memory addresses are **logical** and they must be
translated by the CPU into a physical address before memory is accessed
on the bus.

The rules for translation of logical addresses into physical addresses
are complex and they depend on the *mode* in which the CPU is running
(real mode, 32-bit protected mode, and 64-bit protected mode).
Regardless of the translation mechanism, the CPU mode determines how
much physical memory can be accessed. For example, if the CPU is running
in 32-bit mode, then it is only capable of physically addressing 4 GB
(well, there is an exception called [physical address
extension](http://en.wikipedia.org/wiki/Physical_address_extension), but
ignore it for now). Since the top 1 GB or so of physical addresses are
mapped to motherboard devices the CPU can effectively use only \~3 GB of
RAM (sometimes less - I have a Vista machine where only 2.4 GB are
usable). If the CPU is in [real
mode](http://en.wikipedia.org/wiki/Real_mode), then it can only address
1 *mega*byte of physical RAM (this is the only mode early Intel
processors were capable of). On the other hand, a CPU running in 64-bit
mode can physically access 64GB (few chipsets support that much RAM
though). In 64-bit mode it is possible to use physical addresses above
the total RAM in the system to access the RAM regions that correspond to
physical addresses stolen by motherboard devices. This is called
**reclaiming** memory and it's done with help from the chipset.

That's all the memory we need for the next post, which describes the
boot process from power up until the boot loader is about to jump into
the kernel. If you'd like to learn more about this stuff, I highly
recommend the Intel manuals. I'm big into primary sources overall, but
the Intel manuals in particular are well written and accurate. Here are
some:

-   [Datasheet for Intel G35 Chipset](http://download.intel.com/design/chipsets/datashts/31760701.pdf)
    documents a representative chipset for Core 2 processors. This is
    the main source for this post.
-   [Datasheet for Intel Core 2 Quad-Core Q6000 Sequence](http://download.intel.com/design/processor/datashts/31559205.pdf)
    is a processor datasheet. It documents each pin in the processor
    (there aren't that many actually, and after you group them there's
    really not a lot to it). Fascinating stuff, though some bits are
    arcane.
-   The [Intel Software Developer's Manuals](http://www.intel.com/products/processor/manuals/index.htm)
    are outstanding. Far from arcane, they explain beautifully all sorts
    of things about the architecture. Volumes 1 and 3A have the good
    stuff (don't be put off by the name, the "volumes" are small and you
    can read selectively).
-   [Pádraig Brady](http://www.pixelbeat.org/) suggested that I link to
    Ulrich Drepper's excellent [paper on memory](http://people.redhat.com/drepper/cpumemory.pdf). It's great
    stuff. I was waiting to link to it in a post about memory, but the
    more the merrier.


[112 Comments](/comments/motherboard-chipsets.html)
