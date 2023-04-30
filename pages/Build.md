# Build

Details about building my Klor keyboard are on the [Build page](pages/Build.md).

## PCB

A ordered the PCB from [JLCPCB](https://jlcpcb.com). It was by far the cheapest option. I ordered the PCB in green instead of black as it would shorten
the build time by 2 days. I asked the support on JLCPCB if this would be okay and they said that it would.

The minimal order was 5 pcbs. I did not like the idea of having enough PCBs for 2.5 keybaords. I did some mockups in KICAD to see if I could get two PCBs
on a single file, but the cost ended up being the same as ordering 10 pcbs. So, I went with the standard PCB. 

The first PCB I soldered didn't work completely correctly. All the keys worked, except for the thumb keys. They would register as all of the keys in the
row and not just the thumbkey. I did a lot of debugging. All of the diodes were correct as far as I could determine. There is a possibility that it is a 
grounding issue. So, in the end the extra PCB turned out to be a good idea. I built too complete keyboards from the other four PCBs.

| ![Bare PCB](images/BarePCB.png) |
|:--:| 
| *Bare PCB* |

## Diodes and Kaihl Sockets

Soldering the diodes and the sockets was fairly easy. For the diodes, I would put down a little flux, put solder on the iron, and bring the solder to the
diode while holding it down with tweezers. Sockets were done in the same way. They sockets are easier in that they sit nicely in the holes on the board. I
still pushed down on them with the tweezers just to make sure they were flush.

The circuit board is printed to show the correct location for the sockets and the correct direction for the diodes. This is a big help.

| ![Diodes](images/Diodes.png) |
|:--:| 
| *The diodes are really small!* |

| ![PCB with diodes soldered on](images/PCBwithDiodes.png) |
|:--:|
| *Here is the PCB with diodes soldered to it.* |

| ![PCB with sockets soldered](images/PCBwithSockets.png) |
|:--:|
| *Now the PCB has the Kaihl switch sockets soldered to it.* |

## MCU

The original design of the Klor has the MCU mounted to the bottom of the circuit board. The case designs have a cut out for the MCU to hang down. I didn't
really like this design. I wanted the MCU to be better protected. I also wanted to be able to access the boot and reset buttons on the KB2040.

![Stacked case bottom showing cut out for MCU](images/StackedCaseBottom.png)
|:--:| 
| *This is the laser cut buttom plate of the original case (in wood) showing the cut out for the MCU.* | 

I started playing around in KiCAD to figure out how to mount the MCU on the top. However, the MCU is actually mounted right side up to the bottom of the
keyboard. This means that the circuit board does not need to be redesigned to mount the MCU to the top. You just put the sockets on the top of the board.

Since the board is double sided there are two possible locations for the sockets. I put the sockets on the bottom of the board like the original build
directions say. I would then look at the top of the board to see where the pins would poke through. Then I would switch the socket to the top of the board
and solder it into place.

Mounting the MCU to the top of the PCB meant that the original cases would need to be redesigned. 

After mounting the MCU to the top of the board, I discovered that having the MCU mounted right side up to the bottom of the PCB is a normal design. One
of my co-workers has a keyboard with a similar design.

| ![MCU and sockets attached](images/AttachedMCU.png) |
|:--:| 
| *Showing the MCU attached to the socket on the left and the MCU sockets on the right.* |

After attaching the MCU, you can insert some switches and make sure everything is working. For a couple of the PCBs, I had to resolder a couple of the
sockets to get a better connection.

| ![Testing the Kaihl Box Navy switches](images/TestingSwitches.png) |
|:--:|
| *Testing the switches* |

## TRRS

I did not want to use the typical microphone/headset cable for communication between the keyboard halfs. I don't have a great reason for this, but I don't
like using a connector for a different purpose. There is also the case that as you pull the cable out power could be sent through one of the other
wires in the cable. The chance of that is most likely pretty small, but still it seems a little hacky.

I decided to use the JST-SH Connector. These things are crazy small and I couldn't solder wires to them at all. They really need a breakout board. :-(

| ![JST-SH Connector](images/SmallConnector.png) |
|:--:|
| *Small JST-SH Connector* |

I'm not sure what I'm going to use instead. I might go back to the microphone/headset style cable. I'm also looking at magnetic connectors that Adafruit
sells, but they are fairly big. [Magnetic connectors](https://www.adafruit.com/product/5358)

I also did not like where the TRRS socket was mounted. While the mounting location is typical of most split keyboards, I want to have my mouse between
the keyboard halves and felt like the original location had the cable coming out into the area where my mouse should be. I decided to use wires to route
the socket to come out under the MCU in the same location as the USB connector. I feel like this is a much better location. 

Currently, the two halfs of both of my keyboards are hardwired. It is not very elegant, but it works.

My original plan for my first keyboard was to solder wires to the TRRS pads. These were going to be soldered to the bottom of the PCB because that is
where the TRRS jacks are mounted and the wires also need to be out of the way of the encoders. I then was going to solder these wires to the JST-SH
connector under the MCU. However, the wires need to get to the other side of the board.

So, I **drilled holes** in the board to make this happen! That was rather scary. It looks pretty cool though. :-)

However, there is a cutout in the PCB for the USB socket to sit. For the second build, I decided I could route the wires through this cutout instead of
drilling holes in the PCB. That seems like a much better idea.

| ![Wires soldered to TRRS pads and holes for wires in PCB](images/WiresAndHoles.png) |
|:--:|
| *Wires soldered to TRRS pads and holes for wires in PCB* |

| ![Wires soldered to TRRS pads](images/TRRSwires.png) |
|:--:|
| *Wires soldered to TRRS pads* |

| ![Hard wired halves top view](images/HardWireTop.png) |
|:--:|
| *Hard wired halves top view* |

| ![Hard wired halves bottom view](images/HardWireBottom.png) |
|:--:|
| *Hard wired halves bottom view* |

Notice that the cable between the halves goes up and over to the other half. It is out of the way of where the mouse would be. I think this change is
great. It will be even better when I have a connector and it isn't hard wired.

