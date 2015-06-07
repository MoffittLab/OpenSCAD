//Coverslip holder: All Parts
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 28, 2015
//CC BY NC SA
include <top.scad>
include <bottom.scad>
translate([0,-27,0])top();
translate([0,27,0])bottom();


//Assembled View with Cross Section
//difference(){
//union(){
//            rotate([0,-180,0])translate([-12.5,0,0])top();
//            translate([-12.5,0,0])bottom();
//        }
//        translate([12, 0, -15])cube(size=[25,60, 40], center=true);
//
//    }