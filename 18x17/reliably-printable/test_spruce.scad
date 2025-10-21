dx = 18; // spacing in x-direction
dy = 17; // spacing in y-direction
dr = 0.8; // radius of spruces
h = 3.5; // length of spruces, height of the cylinder 
downshift = 0.5;

import("CS_Thumb_18x17_convex.stl");
translate([0,1*dy,0])import("CS_18x17_r3_bar.stl");
translate([0,2*dy,0])import("CS_18x17_r3.stl");
translate([0,3*dy,0])import("CS_18x17_r2.stl");
translate([0,4*dy,0])import("CS_18x17_r4.stl");
translate([0,5*dy,0])import("CS_Thumb_18x17_right.stl");
translate([0,6*dy,0])import("CS_Thumb_18x17_left.stl");
translate([0,7*dy,0])import("CS_Thumb_18x17_right_1.5u.stl");
translate([0,8*dy,0])import("CS_Thumb_18x17_left_1.5u.stl");
translate([0,9*dy,0])import("CS_Thumb_18x17_convex_1.5u.stl");

translate([dx/4,8.75*dy,-dr/2-downshift])rotate([90,0,0])cylinder(r=dr,h=8.5*dy);