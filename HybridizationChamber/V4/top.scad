// Hybridization Chamber Top
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// July 23, 2015
include <..\..\OpenSCADModules\threads.scad>

module top(){
    //Create threads
    difference(){
        //Create flow holes
        difference(){
            //Create recess for holding sample
            difference(){
                difference(){//Subtract central hole
                    union(){//Add top plate
                        translate([0,0,-6])metric_thread(48.0, 2, 6);
                        cylinder(r=30, h=2, $fn=100);

                    }
                    translate([0,0,-7])cylinder(r=13.0, h=14, $fn=500);
                }
                translate([0,0,-6.25])cylinder(r=20.5, h=1.5, $fn=500);//1.25 mm
            }
            for (pos=[-17.5:35:17.5]){
                translate([pos,0,-7])cylinder(r=0.5, h=14, $fn=500);
            }
        }
        for (pos=[-17.5:35:17.5]){
            translate([pos, 0, -4])english_thread(diameter = (1/4+1/128), threads_per_inch = 28, length = 6.1/25.4, inner=true);
        }
    }
}
top();





    