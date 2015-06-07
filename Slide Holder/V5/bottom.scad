// Coverslip Holder V5
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// May 31, 2015
include <../../OpenSCADModules/drawtext.scad>

module bottom(){
    //Sign the piece
    difference(){
        //Add symmetry breaking supports
        union(){
            //Add gripping points
            union(){
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
                        //Cut away ends
                        difference(){
                            //Cut away central volume
                            difference(){
                                translate([0,0,0])cube(size=[27,48,23], center=true);
                                translate([0,0,3])cube(size=[28,42,23], center=true);
                            }
                            translate([0,0,-2])cube(size=[21,50,13], center=true);
                        }
                        translate([0,0,-2])cube(size=[21,42,23], center=true);
                    }
                }
                for (pos=[-22:46:28]){
                    translate([12.5,pos,0])rotate([90,90,0])cylinder(h=2,r=2,$fn=100);
                }
            }
            for(theta=[-45:90:45]){
                rotate([theta,0,0])rotate([0,90,0])translate([26,0,.5])cube(size=[10,3,3], center=true);
            }
        }
    translate([-.1, 3, -22])rotate([90,0,-90])resize(newsize=[6,3,1.5])drawtext("JRM");
        }
}
//bottom();