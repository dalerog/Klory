
# Building the Case

As you know from the other sections, I moved the position of the MCU from the bottom to the top of the PCB. This means that I have to change the case to
adjust to this change. There are a set of changes that need to be made to made the original case work with the moved MCU. These include moving the hole in
the case for the USB connector, covering up the holes for the Reset and TRRS, making a hole in the switchplate for the MCU, and covering the hole in the
bottom for the MCU to fit. In addition, the Klor case has a plate that fits over the switch plate. This plate will not fit over the MCU in the position on top.

However, I ended up with a bigger issue. It is probably either due to me doing something wrong or to the hotswap sockets that I used, but in my case build
the distance between the PCB and the switchplate was too small. The keyswitches would not fully snap into the switchplate. Also when you tried to pull the 
switches out, the switchplate would move up as you pulled up.

As a result, I essentially redesigned the case. 

## Overview

The new case is essentially a stack case and is a combination of 3D printed and laser cut. It ends up slightly smaller and shorter than the orginal case.

I limited myself to using the existing holes in the PCB and not drilling new holes. It would have been nice if the holes in the PCB were for M2 screws
instead of M2 standoffs, but we got it to work.

Here are the pieces to the case.

| Part | Build | Details | Notes |
| --- | --- | --- | --- |
| Bottom Plate | laser cut 1.6 mm acrylic or 3D printed | This piece is smaller than in the original Klor case. There are holes for M2 screws. | I laser cut mine from clear acrylic scrap |
| Side Plate no hole | 3D printed | There are holes for M2 standoffs 9mm. | It has an "h" profile for the PCB to rest on. |
| PCB | | The PCB also has holes for the M2 standoffs. | |
| Side Plate with hole | 3D printed | Hole is for the usb and TRRS connectors to go through | It also has an "h" profile for switchplate to rest on. |
| Switchplate | 1.6 mm acrylic or 3D printed | Have cutouts for the MCU to poke up through | I did both acrylic and 3D printing versions |
| MCU Cover Frame | 3D Printed | This is a frame to hole a cover for the MCU. It also covers the encoder hole. | |
| MCU Cover | Laser Cut | Covers the MCU. | You could 3D print this with the part abhove. |

The source files for building the case can be found in the case folder. 

* If you are laser cutting the switch plate (top) and bottom plate, you can use the files **BottomPlate.svg** and **SwitchPlate.svg**. 

* The file **caseSides.scad** is an OpenSCAD file for generating the STL files for 3D printing the case. This one file will generate the four parts of the case that are needed. You can comment out lines if you only want to print one part at a time. 

* The file **output/caseSides.stl** is the file for the 3D printer that was exported from **caseSides.scad**.

* If you want to 3D print the top and bottom plate instead of laser cutting them, you can uncomment lines in caseSides.scad to generate them. You can find the output for these in the files **case/switchPlate.stl** and **case/bottomPlate.stl**. I didn't use these files in my build and it is possible that the height of these files are not the same as the acrylic that I used, so it might take some adjustment to work.

* The file **mcuCover.scad** creates the cover for the MCU and encoder. There are multiple versions that you can create from this file depending on what you comment or uncomment. The file **case/mcuTopless.stl** is the output for a build without an encoder while **case/mcuTopLessWithEncoder.stl** is for builds with an encoder.

    * These version do not have covers over the MCU, but require an acrylic window. You can uncomment some lines in the scad file to get          covers 3D printed. You would need to add screw holes as I didn't add those. You can always use a drill to add them.
 
* If you are laser cutting acrylic for a window to see the MCU, use the files **mcuCoverInsert.svg** or **mcuCoverInsertWithEncoder.svg**. I used both clear and smoke acrylic and can't decide which looks better. Both look awesome!

***

## Building

| ![Parts for the case](/images/CaseParts.png) |
|:--:| 
| *Parts of the case except for the MCU cover.* |

The key design element of this case is that the distance between the PCB and the switchplate is fixed. The "h" shaped side pieces are what makes this 
happen.

| ![Case side](/images/Case-SidePiece-Top.png) |
|:--:| 
| *Case side.* |

| ![Closeup of case side](/images/Case-Side-Closeup.png) |
|:--:| 
| *Closeup of case side.* |

| ![Case Bottom](/images/Case-Bottom.png) |
|:--:| 
| *Here is the case bottom with the standoffs attached. (These standoffs are too short.)* |

| ![Case Bottom with Side Attached](/images/Case-BottomAndSide.png) |
|:--:| 
| *Case bottom with the side attached.* |

| ![PCB mounted on the bottom side.](/images/Case-BottomWithPCB-02.png) |
|:--:| 
| *PCB mounted on the bottom side.* |

| ![Closeup of PCB on case side](/images/Case-BottomWithPCB-Closeup.png) |
|:--:| 
| *Closeup of PCB on top of case side.* |

| ![Second side piece installed](/images/Case-SecondSidePiece.png) |
|:--:| 
| *Second side piece installed on top of the PCB.* |

| ![Switchplate installed](/images/Case-SwitchPlate-Installed.png) |
|:--:| 
| *Switchplate installed.* |

| ![Keyswitches installed](/images/Case-SwitchesInstalled.png) |
|:--:| 
| *Keyswitches installed.* |

| ![Keycaps Installed](/images/Case-KeycapsInstalled.png) |
|:--:| 
| *Keycaps installed* |

## MCU Cover

There are too designs for the MCU cover. One with no hole for the encoder and one with the encoder hole. The one for the encoder has a smaller cover for
the MCU. You could modify the non-encoder version to have the smaller cover if you wanted.

Here is a view of the switch plate and the mcu cover.

| ![Switch plate and MCU cover](/images/switchPlateAndMcuCover.png) |
|:--:|
| **Switch plate and MCU cover** |

This image shows the mcu covers and the acrylic windows to go over the MCUs.

| ![MCU cover and acrylic windows](/images/McuCoverParts.png) |
|:--:|
| **MCU cover and acrylic windows** |

***

## Finished Views

Here are some photos of the finished keyboards.

### Finished Bottom View

I chose to use clear acrylic for the bottom which really shows off the PCB. This is great when people are asking you about the keyboard.

| ![Finished Bottom View](/images/BottomViewWithClearAcrylic.png) |
|:--:| 
| *Bottom view with clear acrylic* |

### Clear vs Smoke MCU Window

| ![Finished Klory](/images/FirstKloryFinished.png) |
| :--: |
| *Clear and Smoke MCU Windows* |

***

[Back to Main Page](/README.md)

