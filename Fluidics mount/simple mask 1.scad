//Simple square mask
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//November 13, 2015
//CC BY NC SA

//Add the thread module

//Units are mm

//Define module
union(){
    difference(){
        translate([0,0,2.5])cube(size=[45, 45, 5], center=true);
        translate([0,0,2.5])cube(size=[35, 35, 5.1], center=true);
    }
    difference(){
        translate([0,0,0.5])cube(size=[45, 45, 1], center=true);
        translate([0,0,0.5])cube(size=[20,20,1.1], center=true);
    }
}

//