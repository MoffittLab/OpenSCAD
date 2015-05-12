//Simple Hybridization and Wash Chamber: Insert
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 12, 2015
//CC BY NC SA

//Add the thread module
include <..\OpenSCADModules\threads.scad>

//Units are mm
//Define module
module insert(){
    //Add recess
    difference(){
        //Add fluidics holds
        difference(){
            //Create insert
            difference(){
                cylinder(r=21, h=3,$fn=500);
                translate([0,0,-1])cylinder(r=15.0, h=7, $fn=500);
            }
            union(){
                translate([17.5,0,-1])  cylinder(r=0.5, h=7, $fn=500);
                translate([-17.5,0,-1])cylinder(r=0.5, h=7, $fn=500);
            }
        }
        translate([0,0,-1.5])cylinder(r=20.0, h=2, $fn=1000);
    }
}
//insert();
