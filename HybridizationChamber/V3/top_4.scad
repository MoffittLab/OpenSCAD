//Simple Hybridization and Wash Chamber: Top
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 12, 2015
//CC BY NC SA

//Add the thread module
include <..\..\OpenSCADModules\threads.scad>
include <..\..\OpenSCADModules\drawtext.scad>

//Units are mm

//Define module
module top4(){
    //Add label
    difference(){
        //Subtract central hole
        difference(){
            //Create inner cylinder
            union(){

                translate([0,0,1])cylinder(r=21.0, h=7, $fn=500);
                // Create outer threaded cylinder
                difference(){
                    cylinder(r=33, h=8, $fn=10);
                    translate([0,0,-1])metric_thread(50.5,3,7, inner=true);
                }
            }
            translate([0,0,-1])cylinder(r=19.0, h=10, $fn=500);
        }
        translate([18, 18, 7.1])rotate([0,0,55])drawtext("4");
    }
}
//top4();
