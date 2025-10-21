dx = 17; // spacing in x-direction
dy = 17; // spacing in y-direction
dr = 0.8; // radius of spruces
h = 3.5; // length of spruces, height of the cylinder 
downshift = 0.5;

import("spruce_Thumb_17x17_convex.stl");
translate([0,3*dy,0])import("spruce_17x17_r3_bar.stl");
translate([0,4*dy,0])import("spruce_17x17_r3_dot.stl");
translate([dx/4,3.75*dy,-dr/2-downshift])rotate([90,0,0])cylinder(r=dr,h=1.5*dy);
                translate([dx/2,0,-dr/2])rotate([0,90,0])cylinder(h=h, r=dr,center=true);
