//Simple Hybridization and Wash Chamber: All Parts
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 12, 2015
//CC BY NC SA
include <top.scad>
include <insert.scad>
include <bottom.scad>
translate([0,0,20])top();
translate([0,0,10])insert();
translate([0,0,0])bottom();

//difference(){
//    union(){
//        translate([0,0,4])top();
//        translate([0,0,2])insert();
//        translate([0,0,0])bottom();
//    }
//    translate([-40, -40, -1])cube(size=[40, 80, 40]);
//}
