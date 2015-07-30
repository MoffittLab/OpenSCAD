//Simple Hybridization and Wash Chamber: Combined
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//July 29, 2015
//CC BY NC SA

//Add the thread module
include <top.scad>
include <bottom.scad>
include <insert.scad>
//
//rotate([-180, 0, 0])top();
//translate([0, 0, 3])difference(){
//    bottom();
//    translate([-50, 0, -1])cube(size=[100, 50, 100]);
//}
//difference(){
//    union(){
//        rotate([180,0,0])import("top.stl");
//        import("bottom.stl");  
//    }
//    cube(size=[50,50,50]);
//}
    
translate([0, 0, 3])cuttop();
translate([0, 0, 0.75])rotate([0,0,90])rotate([180,0,0])cutbottom();
translate([0,0,-3])rotate([0,0,90])rotate([180, 0, 0])cutinsert();