//1/4-20 cap screw clearance
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//October 24, 2015
//CC BY NC SA

//Units are mm
//Add the thread module
include <..\OpenSCADModules\threads.scad>

//Define a cap screw clearance
//Dimensions are in mm
module q20_capscrew(ccl, tcl, tl){
    union(){
        translate([0,0,-ccl-tcl])cylinder(h=ccl, r=0.4/2*25.4, $fn=500);
        translate([0,0,-tcl-.1])cylinder(h=tcl+.1, r=0.3/2*25.4, $fn=500);
        english_thread(diameter = (1/4+1/128),  threads_per_inch = 20, length = tl/25.4, inner=false);
    }
}
//q20_capscrew(ccl=5, tcl=3, tl=4);