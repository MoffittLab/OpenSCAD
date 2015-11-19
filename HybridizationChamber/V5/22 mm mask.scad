//Square optical mask for 60 mm cage system
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//October 24, 2015
//CC BY NC SA

//Units are mm
//Add the thread module
include <..\..\OpenSCADModules\threads.scad>

//Define a cap screw clearance
//Dimensions are in mm
module q20_capscrew(ccl, tcl, tl){
    union(){
        translate([0,0,-ccl-tcl])cylinder(h=ccl, r=0.4/2*25.4, $fn=500);
        translate([0,0,-tcl-.1])cylinder(h=tcl+.1, r=0.3/2*25.4, $fn=500);
        english_thread(diameter = (1/4+1/128),  threads_per_inch = 20, length = tl/25.4, inner=false);
    }
}
//q20_capscrew(ccl=5, tcl=1, tl=5);

//Define cage_bracket module
module cage_bracket(h,w){
    difference(){
        difference(){
            translate([0,0,h/2])cube([w,w,h], center=true);
            union(){    
                //Create holes for rods on 60 mm square
                for (x=[-30:60:30]){
                    for (y=[-30:60:30]){
                        translate([x,y,-.05*h])cylinder(r=3, h=1.1*h, $fn=500);
                    }
                }
                
                //Create compression ridges
                for (x=[-28.5:57:28.5]){
                    translate([x,0,h/2])cube([2, 60, 1.1*h], center=true);
                }
            }
        }
        union(){
            rotate([0,0,180])for (pos=[-15:30:15]){
                    translate([29
                    ,pos,h/2])rotate([-90,0,90])q20_capscrew(ccl=5, tcl=3, tl=5);
            for (pos=[-15:30:15]){
                    translate([29
                    ,pos,h/2])rotate([-90,0,90])q20_capscrew(ccl=5, tcl=3, tl=4);
                }
            }
        }
    }
}
cage_bracket(h=12.5, w=70);
