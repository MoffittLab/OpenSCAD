// MBP Laser Plate
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// February 3, 2015
include <../../OpenSCADModules/drawtext.scad>

difference(){
    cube(size=([50,154, 6.35]), center=true);
    union(){
        translate([41/2, 144/2, -3.5])cylinder(r=3.5/2, h=7, $fn=500);
        translate([-41/2, 144/2, -3.5])cylinder(r=3.5/2, h=7, $fn=500);
        translate([41/2, -144/2, -3.5])cylinder(r=3.5/2, h=7, $fn=500);
        translate([-41/2, -144/2, -3.5])cylinder(r=3.5/2, h=7, $fn=500);
    }
}
