dx = 18; // spacing in x-direction
dy = 17; // spacing in y-direction
dr = 0.8; // radius of spruces
h = 3.5; // length of spruces, height of the cylinder before rotating
Nx = 2; // Number of Caps in x-direction
Ny = 5; // Number of Caps in y-direction
downshift=0.5;

for(x = [0:Nx-1]){
    for(y = [0:Ny-1]){
        translate([x*dx,y*dy]){
            if (x!=0){
                translate([-dx/2,0,-dr/2-downshift])rotate([0,90,0])cylinder(h=h, r=dr,center=true);
            }
            if (y!=0){
                translate([0,-dy/2,-dr/2-downshift])rotate([90,0,0])cylinder(h=h, r=dr,center=true);
            }

            import("downshift0.5mm/CS_18x17_r3.stl");
        }
    }
}