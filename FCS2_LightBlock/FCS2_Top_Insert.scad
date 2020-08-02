// FCS2 Light Block Insert
// Jeffery Moffitt
// jeffrey.moffitt@childrens.harvard.edu
// August 3, 2020
include <..\OpenSCADModules\drawtext.scad>

module light_reflect(){
    for (x=[-15:1.5*sqrt(2):15]){
        for(y=[-15:1.5*sqrt(2):15]){
            translate([x,y,0])rotate([0,0,45])cylinder(r1=0, r2=3, h=1.5, $fn=4);        
        }
    }
}

text1 = "MOFFITT LAB";
module block(){
    union(){
        difference(){
            union(){
                translate([0,0,3])cylinder(r=22,h=1.5, $fn=500);
                difference(){
                    translate([0,0,-3])cylinder(r1=30.5/2, r2=32.5/2, h=6, $fn=500); // Main block
                    translate([0,0,-3.5])cylinder(r=14, h=7, $fn=500);
                }
                translate([0,0,8])rotate([0,-90,0])cylinder(r=5, h=2, $fn=5, center=true);
            }
            for (ind=[0:1:len(text1)]){
                rotate([0,0,45 + ind*90/10])translate([-17.5,1,3])rotate([0,-180,90])scale([0.5,0.5,1])drawtext(text1[ind]);
            }

            //union(){
            //    rotate([0,0,90])translate([-11,3,4])scale([0.5,0.5,1])drawtext("MOFFITT");
            //    rotate([0,0,90])translate([-4.25,-6,4])scale([0.5,0.5,1])drawtext("LAB");
            //}

        }
        difference(){
            light_reflect();
            difference(){
                cylinder(r=30,h=30,$fn=100, center=true);
                cylinder(r=14,h=30, $fn=500, center=true);
            }
        }
    }
}


block();

