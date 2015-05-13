//Simple Hybridization and Wash Chamber: All Parts
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//May 12, 2015
//CC BY NC SA
include <top.scad>
include <insert.scad>
include <bottom.scad>

translate([0,0,25])top();
translate([0,0,15])rotate([180, 0, 0])insert();
translate([0,0,0])bottom();

