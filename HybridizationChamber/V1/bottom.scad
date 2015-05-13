//Simple Hybridization and Wash Chamber: Bottom
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 11, 2015
//CC BY NC SA

//Add the thread module
include <..\OpenSCADModules\threads.scad>

//Units are mm
module bottom(){
    //Subtract central hole
    difference(){
        
        //Create threaded sidewall
        difference(){
            //Create threaded sidewall with grip
            union(){
                translate([0,0,1.5])metric_thread(46.0, 1, 5.5);
                translate([-24, -24, 0])cube(size=[48, 48, 2]);
            }
            translate([0,0,2])cylinder(r=21.5, h=10,$fn=500);
        }
        //Clearance hole
        translate([0,0,-3])cylinder(r=14.5, h=10);
    }
}
//bottom();