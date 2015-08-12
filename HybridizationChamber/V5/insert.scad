// Hybridization Insert
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// July 29, 2015
include <..\..\OpenSCADModules\threads.scad>

module insert(){
    //Create alignment notches
    difference(){
        //Create recess for holding sample
        difference(){
            difference(){//Subtract central hole
                cylinder(r=22.0, h=2, $fn=500);
                cylinder(r=13.0, h=14, $fn=500);
            }
            translate([0,0,-.75])cylinder(r=20.5, h=1.5, $fn=500);//0.75 mm
        }
        for (theta=[0:90:270]){
            rotate([0,0,theta])translate([21.45, 0, 0])cube(size=[2,1.25,5], center=true);
        }
    }
}
insert();

module insert_norecess(){
    //Create alignment notches
    difference(){
        difference(){//Subtract central hole
            cylinder(r=22.0, h=1, $fn=500);
            translate([0, 0, -1])cylinder(r=13.0, h=14, $fn=500);
        }
        for (theta=[0:90:270]){
            rotate([0,0,theta])translate([21.45, 0, 0])cube(size=[2,1.25,5], center=true);
        }
    }
}
//insert_norecess();

module cutinsert(){
    difference(){
        insert();
        translate([0,0,-25])cube(size=[50,50,50]);
    }
}
//cutinsert();