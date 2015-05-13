//Simple Hybridization and Wash Chamber: Top
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 12, 2015
//CC BY NC SA

//Add the thread module
include <..\..\OpenSCADModules\threads.scad>

//Units are mm

//Define module
module top(){
    //Subtract central hole
    difference(){
        //Create inner cylinder
        union(){

            translate([0,0,1])cylinder(r=21.0, h=5, $fn=500);
            // Create outer threaded cylinder
            difference(){
                cylinder(r=29, h=6, $fn=10);
                translate([0,0,-1])metric_thread(48.0,1,5, inner=true);
            }
        }
        translate([0,0,-1])cylinder(r=19.0, h=10, $fn=500);
    }
}
//top();
