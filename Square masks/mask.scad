//Square optical mask for 60 mm cage system
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//October 24, 2015
//CC BY NC SA

//Units are mm
include <cap screw.scad>

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
        //Create threads
        union(){
            for (pos=[-17.5:35:17.5]){
            translate([28, pos, h/2])rotate([-90,0,90])q20_capscrew(ccl=5, tcl=3, tl=4);
            }
            rotate([0,0,180])for (pos=[-17.5:35:17.5]){
            translate([28, pos, h/2])rotate([-90,0,90])q20_capscrew(ccl=5, tcl=3, tl=4);
            }
        }
    }
}
//cage_bracket(h=12.5, w=70);

// Build cage mask
module cage_mask(size){
    union(){
        difference(){
            cage_bracket(h=12.5, w=70);
            cube([40,40,30], center=true);
        }
        difference(){
            translate([0,0,7])cube([41, 41, 1], center=true);
            translate([0,0,7])cube([size, size, 5], center=true);
        }   
    }
}
cage_mask(size=20);
