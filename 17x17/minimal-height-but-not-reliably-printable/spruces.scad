dx = 17; // spacing in x-direction
dy = 17; // spacing in y-direction
dr = 0.8; // radius of spruces
h = 3.5; // length of spruces, height of the cylinder before rotating
Nx = 2; // Number of Caps in x-direction
Ny = 1; // Number of Caps in y-direction
for(x = [0:Nx-1]){
    for(y = [0:Ny-1]){
        translate([x*dx,y*dy]){
            if (x!=0){
                translate([-dx/2,0,-dr/2])rotate([0,90,0])cylinder(h=h, r=dr,center=true);
            }
            if (y!=0){
                translate([0,-dy/2,-dr/2])rotate([90,0,0])cylinder(h=h, r=dr,center=true);
            }

            import("ULP_r3h_dot.stl");
        }
    }
}