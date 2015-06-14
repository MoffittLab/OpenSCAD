// Alternative FCS2 Top
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// June 13, 2015
include <..\OpenSCADModules\threads.scad>

module clearance(){
    intersection(){
        difference(){
            cylinder(r=31.0, h=7.0, $fn=500);
            translate([0,0,-.5])cylinder(r=25.0, h=8.0, $fn=500);
        }
        rotate([0,0,90])translate([-20, -7.5, 0])cube(size=[65, 15, 7]);
    }
}

// Create the notches for the clamps (will be deleted) 
module notches(){
    intersection(){
        difference(){
            cylinder(r=31.0, h=7.0, $fn=500);
            translate([0,0,-.5])cylinder(r=27.0, h=8.0, $fn=500);
        }
        for(theta=[45:90:360]){
            rotate([0,0,theta])translate([-35, -5.5, 0])cube(size=[65, 11, 7]);
        }
    }
}

module top(){
    //Create clearance for 4-pin
    difference(){
        //Remove notches for screws
        difference(){
            //Remove notches for the clamps
            difference(){
                //Create threads
                difference(){
                    //Create flow holes
                    difference(){
                        //Create recess for holding sample
                        difference(){
                            //Subtract central hole
                            difference(){
                                //Fuse top and bottom plate
                                union(){
                                    cylinder(r=30.0, h=6.0, $fn=500);
                                    translate([0,0,-6])cylinder(r=21.0, h=6.0, $fn=500);
                                }
                                translate([0,0,-7])cylinder(r=13.0, h=14, $fn=500);
                            }
                            translate([0,0,-6.25])cylinder(r=20.0, h=1.5, $fn=500);//1.25 mm
                        }
                        for (pos=[-17.5:35:17.5]){
                            translate([pos,0,-7])cylinder(r=0.5, h=14, $fn=500);
                        }
                    }
                    for (pos=[-17.5:35:17.5]){
                        translate([pos, 0, 3])english_thread(diameter = (1/4+1/128), threads_per_inch = 28, length = 1/8, inner=true);
                    }
                }
                rotate([0,0,-10])translate([0,0,-.5])notches();
            }
            for (i=[0:1]){
            rotate([0,0,-19])mirror([i,0,0])translate([28.5,0,-.5])union(){
                cylinder(r=1, h=7, $fn=500);
                translate([1,0,3.5])cube(size=[2,2,7], center=true);
                }
            }
        }
        translate([0,0,-.5])clearance();
    }
}

top();
//notches();





    