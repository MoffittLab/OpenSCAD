//Simple Hybridization and Wash Chamber: Insert
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 12, 2015
//CC BY NC SA

//Add the thread module
include <..\..\OpenSCADModules\threads.scad>

//Units are mm
//Define module
module insert(){
    //Remove alignment notches
    difference(){
        //Add recess
        difference(){
            //Add fluidics holds
            difference(){
                //Create insert
                difference(){
                    cylinder(r=22, h=5,$fn=500);
                    translate([0,0,-1])cylinder(r=15.0, h=7, $fn=500);
                }
                for (theta=[0:180:180]){
                    rotate([0,0,theta])translate([17.5,0,0])union(){
                        cylinder(r=0.5, h=7, $fn=500);
                        translate([0,0,2])cylinder(r=1.0,h=4,$fn=500);
                    }
                }
            }
            translate([0,0,-1])cylinder(r=20.0, h=2, $fn=1000);
        }
        for (theta=[0:90:270]){
    rotate([0,0,theta])translate([22-1,-1,-.1])cube(size=[2,2,8]);
}
    }

}
//insert();


