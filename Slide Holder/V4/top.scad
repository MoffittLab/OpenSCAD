// Coverslip Holder V4: Top
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// May 28, 2015
include <../../OpenSCADModules/drawtext.scad>

module top(){
    //Add grips
    union(){
        //Remove grips
        difference(){
            //Add upper supports
            union(){
                //Add internal slip supports
                union(){
                    // Cut out the coverslip positions
                    difference(){
                        //Cut away the top
                        difference(){
                            //Cut away inner cylinder
                            difference(){
                                translate([-1,0,0])rotate([0,90,0])cylinder(h=27, r=23, $fn=500);
                                translate([-2,0,0])rotate([0,90,0])cylinder(h=29, r=18, $fn=500);
                            }
                            translate([-2, -40, 0])cube(size=([40,80,40]));
                        }
                        for (pos=[0:4:20]){
                            translate([2+pos, 0, 0])rotate([0,90,0])cylinder(h=0.9, r=24, $fn=500);
                        }
                    }
                    for (theta=[30:30:150]){
                        rotate([-theta,0,0])rotate([0,90,0])translate([0,21,0])cylinder(h=25,r=.75,$fn=100);
                    }
                }
                translate([12.5,0,-11.5])
                //Cut away bottom
                    difference(){
                        //Cut away central volume
                        difference(){
                            translate([0,0,0])cube(size=[27,52,23], center=true);
                            translate([0,0,3])cube(size=[28,42,23], center=true);
                        }
                    translate([0,0,-2])cube(size=[21,42,23], center=true);
                }
            }
                for (pos=[-24:48:24]){
                    translate([12.5,pos,0])rotate([90,90,0])cube(size=[5,4.5,5.1], center=true);
                }
        }
        for(pos=[6.25:12:18.75]){
                for(theta=[0:180:180]){
                translate([pos,0,0])rotate([0,0,theta])translate([0,-25,-15.25+7.5]){
                    union(){
                        cube(size=[5,2,30.5], center=true);
                        translate([0,.25,15.75])cube(size=[5,2.5,1], center=true);
                    }
                }
            }
        }
    }
}
//top();