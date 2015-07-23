//Simple Hybridization and Wash Chamber: Combined
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//July 21, 2015
//CC BY NC SA

//Add the thread module
include <top.scad>
include <bottom.scad>

rotate([-180, 0, 0])top();
translate([0, 0, 3])difference(){
    bottom();
    translate([-50, 0, -1])cube(size=[100, 50, 100]);
}
