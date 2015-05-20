//Simple Hybridization and Wash Chamber: All Parts
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 13, 2015
//CC BY NC SA
include <top_6.scad>
include <insert.scad>
include <bottom_1.scad>
translate([0,0,20])rotate([0,180,0])top6();
translate([0,0,0])rotate([0,180,0])insert();
translate([0,0,-20])bottom1();


//Assembled View with Cross Section
//rotate([0,0,90])union(){
//    difference(){
//            translate([0,0,6.5])color("Plum")top6();
//        translate([-40, -40, -2])cube(size=[80, 40, 40]);
//    }
//    difference(){
//            translate([0,0,2.1])color("Red")insert();
//        translate([-40, -40, -1])color("Red")cube(size=[80, 40, 40]);
//    }
//
//    difference(){
//            translate([0,0,0])bottom1();
//        translate([-40, -40, -1])cube(size=[80, 40, 40]);
//    }
//}
