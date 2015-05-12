//Simple Hybridization and Wash Chamber
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 11, 2015
//CC BY NC SA

//Add the thread module
include <..\OpenSCADModules\threads.scad>

//Units are mm

//Subtract central hole
difference(){
    
    //Create threaded sidewall
    difference(){
        //Create threaded sidewall with grip
        union(){
            translate([0,0,1])metric_thread(42.0, 1, 5);
            translate([-22.5, -22.5, 0])cube(size=[45, 45, 1]);
        }
        translate([0,0,2])cylinder(r=20.25, h=5,$fn=500);
    }
    //Clearance hole
    translate([0,0,-1])cylinder(r=14.5, h=5);
}
