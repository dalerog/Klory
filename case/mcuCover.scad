/* Copyright 2024
 * Dale Rogerson
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


//---  Top plate
module topPlate() {
    linear_extrude(height = 1.5)
    import("top-thisIsSwitchPlate.svg");
}

// --- This mcu cover has a top on it and is the same height down the keyboard. I did not use
module mcuCover() {
     difference() {
        cube([30, 85, 5]); // main body
        translate([5, 0, 0]) cube([20, 60, 4]); // main hollow out
        translate([5, 0, 0]) cube([15, 70.75, 4]); // back middle hollow out
        translate([2, 7, 0]) cube([10, 71, 4]); // left wider hollow out
        translate([20, 7, 0]) cube([8, 60, 4]); // right wider hollow out
      
     color("green")
        translate([0, 86, 0])
            rotate([0, 0, -30])
                cube([40, 40, 5]); // trim end
    color("green") // front hole
        translate([2.5, 2.5, -5]) cylinder(h = 10, r = 1.2);
    color("green") // back hole
        translate([2.5, 2.5+79.5, -5]) cylinder(h = 10, r = 1.2);

    color("green") // light hole
        translate([10, 2.5, -5]) cylinder(h = 15, r = 1.2);
    color("green") // light hole
        translate([20, 2.5, -5]) cylinder(h = 15, r = 1.2);
    }
}


/* Uncomment these lines to use this alternative cover.
translate([5, 0, 5])
    rotate([0, 180, 0])
        mirror([1, 0, 0])
            mcuCover();
 

translate([-5, 0, 5])
    rotate([0, 180, 0])
        mcuCover();
*/  

topPlateHeight = 3.0;

mcuClearance = 5;
coverHeight = mcuClearance + topPlateHeight;

coverWidth = 30;
// coverLength = 52;

lipWidth = 0.5;
  
wideWallWidth = 5;
thinWallWidth = 1.5;

postOffset = 5;

//--- Make a cover that has minimal height and an opening to see MCU.
module mcuCoverTopless(CoverLength) {
    //  Front
    difference() {
        cube([coverWidth, CoverLength, coverHeight]); // front body
        
        translate([wideWallWidth, 0, 0])
            cube([coverWidth-wideWallWidth*2, CoverLength-thinWallWidth, mcuClearance]); // main hollow out
        
        translate([lipWidth, lipWidth, mcuClearance])
            cube([coverWidth-lipWidth*2, CoverLength-lipWidth*2, topPlateHeight]); // remove top

        translate([thinWallWidth, postOffset, 0])
            cube([5, CoverLength-thinWallWidth-postOffset, coverHeight]); // make outside wall narrower
            
        translate([coverWidth-postOffset-thinWallWidth, postOffset, 0])
            cube([5, CoverLength-thinWallWidth-postOffset, coverHeight]); // make inside wall narrower                
                
    color("green") // front hole for screw/support
        translate([2.5, 2.5, -5]) cylinder(h = 10, r = 1.5);

    }
    
    //  Back half
    difference() {
        color("blue") translate([0, CoverLength, 0]) cube([30, 52-CoverLength+33, .5]); // front body
        
      
     color("green")
        translate([0, 86, 0])
            rotate([0, 0, -30])
                cube([40, 40, 5]); // trim end

     color("green") // back hole
        translate([2.5, 2.5+79.5, -5]) cylinder(h = 10, r = 1.2);
                
    }
}


// --- Covers the hole in the top plate.
//
//     This can be cut on a laser cutter instead of 3D printed which is what I did.
module topInsert(CoverLength) {

    difference() {
        translate([lipWidth, lipWidth, mcuClearance])
            cube([coverWidth-lipWidth*2, CoverLength-lipWidth*2, topPlateHeight]); // remove top
        
        color("green") // front hole
            translate([2.5, 2.5, -5]) cylinder(h = 10, r = 1.2);
    }
};

coverLength = 52;

//
// These print without the holes for the encoder. 
//

// Left Cover
//mcuCoverTopless(coverLength);

// Right Cover
//translate([-coverWidth/2, 0, 0]) mirror([1, 0, 0]) mcuCoverTopless(coverLength);

// If you don't want to do that you can uncomment these lines and cover the hole in the
// MCU cover. You will need to adjust it to get it to work for both right and left covers and
// add screw holes.
// color("green") topInsert(coverLength); // This covers the hole in the mcu cover


coverLengthWithEncoder = 35;

module mcuCoverToplessEncoder() {
    difference() {
        mcuCoverTopless(coverLengthWithEncoder);

        // This is the hole for the encoder to poke through.
        color("green") // front hole
            translate([coverWidth/2, 60.5, -5]) cylinder(h = 10, r = 6);
    }        
}

//
// These print with the hole for the encoder. If you aren't using the encoder. Look above.
//

// Left cover
mcuCoverToplessEncoder();

// Right cover
translate([-coverWidth/2, 0, 0]) mirror([1, 0, 0]) mcuCoverToplessEncoder();

// I put clear or smokey arcylic over the MCU so that I can see it. Looks really cool.
// If you don't want to do that you can uncomment these lines and cover the hole in the
// MCU cover. You will need to adjust it to get it to work for both right and left covers
// and add screw holes.
// color("green") topInsert(coverLengthWithEncoder); // This covers the hole in the mcu cover


// put switch plate down to align the hole in the encoder.
/*
translate([-10, 114, 0]) {
    mirror([0, 1, 0]) {
        topPlate();
    }
 } 
 */
     
 