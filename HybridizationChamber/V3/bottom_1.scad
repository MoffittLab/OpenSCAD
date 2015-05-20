//Simple Hybridization and Wash Chamber: Bottom
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 12, 2015
//CC BY NC SA

//Add the thread module
include <..\..\OpenSCADModules\threads.scad>
include <..\..\OpenSCADModules\drawtext.scad>

//Units are mm
module bottom1(){
   //Mark Item
   difference(){
        //Add alignment notches
       union(){
            //Subtract central hole
            difference(){
                //Create threaded sidewall
                difference(){
                    //Create threaded sidewall with grip
                    union(){
                        translate([0,0,1.5])metric_thread(48.0, 2, 8);
                        translate([-25, -25, 0])cube(size=[50, 50, 2]);
                    }
                    translate([0,0,2])cylinder(r=22.5, h=10,$fn=500);
                }
                //Clearance hole
                translate([0,0,-3])cylinder(r=14.5, h=10);
            }
            for (theta=[0:90:270]){
              rotate([0,0,theta])translate([21.5,-.75,0])cube(size=[1.25,1.5,6]);
            }
        }
        translate([19,16,1.25])drawtext("1");
    }
}
//bottom1();
