//Simple Hybridization and Wash Chamber: All Parts
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 13, 2015
//CC BY NC SA
include <top.scad>
include <insert.scad>
include <bottom.scad>
translate([0,0,40])rotate([0,180,0])top();
translate([0,0,0])rotate([0,180,0])insert();
translate([0,0,-40])bottom();


// Assembled View with Cross Section
//rotate([0,0,90])union(){
//    difference(){
//            translate([0,0,4.2])color("Plum")top();
//        translate([-40, -40, -1])cube(size=[80, 40, 40]);
//    }
//    difference(){
//            translate([0,0,2.1])color("Red")insert();
//        translate([-40, -40, -1])color("Red")cube(size=[80, 40, 40]);
//    }
//
//    difference(){
//            translate([0,0,0])bottom();
//        translate([-40, -40, -1])cube(size=[80, 40, 40]);
//    }
//}
