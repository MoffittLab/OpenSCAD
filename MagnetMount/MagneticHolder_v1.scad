// Magnetic Holder
// V2.0
// jeffrey.moffitt@childrens.harvard.edu
// April 19, 2019
include <drawtext.scad>

module Tube50mL(){
    union(){
        translate([0,0,50+15])cylinder(h=100, r=15, $fn=500, center = true);
        translate([0,0,7.5])cylinder(h=15, r1=3.5, r2=15, $fn=500, center=true);
    }
}

//Tube50mL();

module Tube15mL(){
    union(){
        translate([0,0,95/2+24])cylinder(h=95, r1=16/2, r2=17/2, $fn=500, center = true);
        translate([0,0,24/2])cylinder(h=24, r1=6/2, r2=16/2, $fn=500, center=true);
    }
}
//Tube15mL();

module Magnet(){
    union(){
        cylinder(h=25.4, r=25.4/2, $fn=500, center=true);
        translate([25.4/2, 0, 0])cylinder(h=25.4, r=0.5, $fn=3, center=true);
        translate([-25.4/2, 0, 0])cylinder(h=25.4, r=0.5, $fn=3, center=true);
        translate([0, -25.4/2, 0])cylinder(h=25.4, r=0.5, $fn=3, center=true);
        translate([0, 25.4/2, 0])cylinder(h=25.4, r=0.5, $fn=3, center=true);
    }
}
//Magnet();


module version_label(){
    drawtext("JRM V1");
}


module Base(){
    difference(){
        difference(){
            difference(){
                union(){
                    translate([0,0,90/2])cube([25, 40, 90], center=true);
                    translate([-7,0,5/2])cube([80, 50, 5], center=true);
                    translate([-7,0,10])cube([72.5, 35, 5], center=true);
                    translate([-7,0,90])cube([80,40,5], center=true);
                }
                union(){
                    translate([21,0,2.5])Tube15mL();
                    translate([-27.5,0,2.5])Tube50mL();
                }
            }
            rotate([0,0,90])translate([0, 0, 25.4+17])rotate([90, 0, 0])translate([0, -25.4/2,0])union(){
                Magnet();
                translate([0,27,0])Magnet();
            }
        }
        translate([30,15,-0.1])mirror([1,0,0])version_label();
    }
}
Base();
//color("Red")translate([21,0,2.5])Tube15mL();
//color("Blue")translate([-27.5,0,2.5])Tube50mL();
