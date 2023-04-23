# Klory
A variation of the Klor keyboard by GEIGEIGEIST (https://github.com/GEIGEIGEIST/KLOR).

## Introduction

This is a guide to my experiences buiding Klory, my variant of the Klor keyboard. This was my first keyboard build and GEIST did an outstanding job
documenting the build process in the GitHub repository. The changes I made were mainly due to my inexperince. Some were just personal preference 
differences.

Spoiler alert! I love Klory and am buiding a second for home.

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

I was not interested in:
- OLED
- haptic feedback
- sound

I really wanted the per key LEDs and partially decided on a wired solution to get the LEDs. However, after the initial excitment of having LEDs on the 
Planck, I decided that it didn't have a lot of value. I could't even see the leds in the lighting at work. I also wasn't sure which LEDs to order.

I decided to built a wired Polydactyl using the Adafruit KB2040.

### Why wired?

As a first build, I thought that a wired solution would be easier to debug and would have less failure modes. It would also work with QMK which I was used to using with the Planck. In addition, there were more options for MCUs and they would be cheaper.

### KB2040

I decided to use the KB2040 from Adafruit. I picked it because it was cheap and and seemed very versatile. It worked with CircuitPython, C++, and Rust. It also had extra connectors, debug pins, LEDs, and reboot/reset buttons. It would be a great MCU for other projects if the keyboard didn't work out.

## Parts

The following is where I ordered my parts:







