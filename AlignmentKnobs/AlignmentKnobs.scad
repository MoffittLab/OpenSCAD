// Alignment Knobs
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// July 22, 2015
include <..\OpenSCADModules\threads.scad>

union(){
    union(){
        english_thread(diameter = (1/4+1/128),  threads_per_inch = 28, length = 1/8, inner=false);
        translate([0, 0, -3])cylinder(r=4, h=3, $fn=5);
    }
    //translate([0, 0, 3])cylinder(r=0.4, h=10, $fn=100);
    //translate([0, 0, 3])cylinder(r=0.4, h=6, $fn=100);
    //translate([0, 0, 3])cylinder(r=0.4, h=8, $fn=100);
    translate([0, 0, 3])cylinder(r=0.4, h=4, $fn=100);
}