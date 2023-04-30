# Klory
A variation of the Klor keyboard by GEIGEIGEIST (https://github.com/GEIGEIGEIST/KLOR).

***

![Finished Klory](images/FirstKloryFinished.png)

## Introduction

This is a guide to my experiences buiding Klory, my variant of the Klor keyboard. This was my first keyboard build and GEIST did an outstanding job
documenting the build process in the GitHub repository. The changes I made were mainly due to my inexperince. Some were just personal preference 
differences.

Spoiler alert! I love Klory and am buiding a second for home.

## Thanks!

Of course, thanks to GEIST for making such a great keyboard. 

- Thanks to Char for leading me down the mechanical keyboard rabbit hole. 
- Thanks to Peter B. for help soldering diodes and hot swap sockets. 
- Thanks Harlan for expertise in all things maker. 

## Why the Klor?

I was using a Planck Ez. I had changed the keymap to a 3x5 layout in which I was not using the center 6 keys above the spacebar. I was using the equivalent of four (4) thumb keys in my layout. However, I felt that my thumbs were cramped as they had to fold under my hand to get to some of the keys.

I really liked the Planck Ez, but then I started wanting a split keyboard. I originally looked for a split Planck, but then I thought column
stagger would be great and more room for my thumbs. I really liked the Corne, but I was using four thumb keys.

Therefore, the main reasons for the Klor were:
- four thumb keys
- thumb keys not requiring folding thumb under hand
- thumb keys in a curve

There were several nice to haves:
- encoder support
- the option of moving the pinkie out for the Q and P key instead of up.
- KB2040 support
- trackball support

I really wished the trackball was still for sale.

I was not interested in:
- OLED
- haptic feedback
- sound

These options did not seem that useful. Also, not all of the firmwares supported these different options.

I decided to built a wired Polydactyl using the Adafruit KB2040 without LEDs.

## Decisions

### Polydactyl

As I mentioned before, I picked the Klor for the four thumb keys. I was originally planning to build the Yubitsume layout without the extra pinkie keys. However, I was finding the pinkie reach to the P and the Q was not ideal. So, I decided to leave these keys on and experiment with using those keys as alternate pinkie keys. I have not started using these keys yet. Currently, I'm not interested in using these to give the pinkie more keys like return and delete etc. I'm more interested in fewer keys.

### LEDs

I really wanted the per key LEDs and partially decided on a wired solution to get the LEDs. However, after the initial excitment of having LEDs on the 
Planck, I decided that it didn't have a lot of value. I could't even see the leds in the lighting at work. I also wasn't sure which LEDs to order.

### Choc switches

The only negative at this point was that I wanted low profile Choc switches. I spent time looking for an alternative to the Klor that was low profile.
There were some teasers that there might be a low profile Choc variant. However, this did not seem likely or to happen in the timeframe I was willing to wait. I ended up decided that using MX switches allowed me to use the MX DSA keycaps that I had purchased for the Planck. I'm really happy that I went with MX switches because it gave me much more flexibility to test switches on the Planck.

### Why wired?

As a first build, I thought that a wired solution would be easier to debug and would have less failure modes. It would also work with QMK which I was used to using with the Planck. In addition, there were more options for MCUs and they would be cheaper.

There are cases where the right keyboard stops communicating with the left. Since, the keyboards are wired, I can just unplug them. I use a magnetic USB adapter so this is super easy to do. 

### KB2040

I decided to use the KB2040 from Adafruit. I picked it because it was cheap and and seemed very versatile. It worked with CircuitPython, C++, and Rust. It also had extra connectors, debug pins, LEDs, and reboot/reset buttons. It would be a great MCU for other projects if the keyboard didn't work out.

***

## Parts

Information about the parts I used and where I bought them is on the [Parts page](/pages/Parts.md).

## Build

Details about building my Klor keyboard are on the [Build page](/pages/Build.md).

## Building the Case

Details about building the case are on the [Case Build page](/pages/CaseBuild.md)
