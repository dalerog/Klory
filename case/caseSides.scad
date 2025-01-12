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
    import("SwitchPlate.svg");
}

//---  Bottom plate
module bottomPlate() {
    linear_extrude(height = 1.5)
    import("BottomPlate.svg");
}

//---  Top outline
/*
linear_extrude(height = 1.5)
import("outerLip.svg");
*/

module rightSide() {
//--- Side
sideHeight = 4;
linear_extrude(height = sideHeight)
import("side.svg");

//  Lip from top outline
dY = 0.25;
lipHeight =  1.5 + dY;
lipZ = sideHeight - dY;
translate([0, 0, lipZ])
linear_extrude(height = lipHeight)
import("outerLip.svg");
}


module leftSide() {
    mirror([0, 1, 0]) {
        rightSide();
    }
}

//--- Make hole for the usb and keyboard connectors
module rightSideWithHole() {
    difference() {
        rightSide();
        translate([15, 108, -1]) cube([20, 15, 9]);
    }
}

module leftSideWithHole() {
    mirror([0, 1, 0]) {
        difference() {
            rightSide();
            translate([15, 108, -1]) cube([20, 15, 9]);
        }
    }
}

// Render the case for the right side with a hole for the connector.
rightSideWithHole();

// Uncomment this if you want to see how the bottom plate fits with the top plate.
// You can also print the bottom plate instead of cutting it out of acrylic with a laser cutter.
//bottomPlate();

// Uncomment to show top plate fitting on top of the case.
// You can also use this to print the top plate intead of cutting with a laser cutting. 
// Remove the translatoion for printing.
//translate([0, 0, 4]) topPlate();

translate([-175, 0, 0]) rightSide();


translate([0, -10, 0]) leftSideWithHole();
translate([-175, -10, 0]) leftSide();
