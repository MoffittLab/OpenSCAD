//Simple Hybridization and Wash Chamber: Bottom
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//July 21, 2015
//CC BY NC SA

//Add the thread module
include <..\..\OpenSCADModules\threads.scad>
include <..\..\OpenSCADModules\drawtext.scad>

//Units are mm

//Define module
module bottom(){

    //Subtract central hole
    difference(){
        //Create inner cylinder
        union(){
            translate([0,0,4.5])cylinder(r=22.0, h=7, $fn=500);
            // Create outer threaded cylinder
            difference(){
                cylinder(r=33, h=12, $fn=10);
                translate([0,0,-1])metric_thread(50,3,10, inner=true);
            }
        }
        translate([0,0,-1])cylinder(r=13.0, h=14, $fn=500);
    }
}
bottom();
