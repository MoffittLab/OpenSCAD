//Simple Hybridization and Wash Chamber: All Parts
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 13, 2015
//CC BY NC SA
include <top_3.scad>
include <insert.scad>
include <bottom_2.scad>
translate([0,0,20])rotate([0,180,0])top3();
translate([0,0,0])rotate([0,180,0])insert();
translate([0,0,-20])bottom2();


//Assembled View with Cross Section
//rotate([0,0,90])union(){
//    difference(){
//            translate([0,0,8])color("Plum")top3();
//        translate([-40, -40, -2])cube(size=[80, 40, 40]);
//    }
//    difference(){
//            translate([0,0,3])color("Red")insert();
//        translate([-40, -40, -1])color("Red")cube(size=[80, 40, 40]);
//    }
//
//    difference(){
//            translate([0,0,0])bottom2();
//        translate([-40, -40, -1])cube(size=[80, 40, 40]);
//    }
//}
