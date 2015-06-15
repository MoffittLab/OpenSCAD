// Coverslip Holder V5
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// June 13, 2015
include <../../OpenSCADModules/drawtext.scad>

module bottom(){
    //Sign the piece
difference(){
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
                                translate([0,0,0])rotate([0,90,0])cylinder(h=44, r=23, $fn=500);
                                translate([-1,0,0])rotate([0,90,0])cylinder(h=46, r=18, $fn=500);
                            }
                            translate([-1, -40, 0])cube(size=([46,80,40]));
                        }
                        for (pos=[4:5:40]){
                            translate([pos, 0, 0])rotate([0,90,0])cylinder(h=1, r=24, $fn=500);
                        }
                    }
                    for (theta=[30:30:150]){
                        rotate([-theta,0,0])rotate([0,90,0])translate([0,21,0])cylinder(h=40,r=.75,$fn=100);
                    }
                }
                translate([22,0,-11.5])difference(){
                    //Cut away ends
                    difference(){
                        //Cut away central volume
                        difference(){
                            translate([0,0,0])cube(size=[44,48,23], center=true);
                            translate([0,0,3])cube(size=[45,40,23], center=true);
                        }
                        translate([0,0,-2])cube(size=[36,50,13], center=true);
                    }
                    translate([0,0,-2])cube(size=[36,40,23], center=true);
                }
            }
            for (pos=[-21:45:28]){
                translate([22.5,pos,0])rotate([90,90,0])cylinder(h=3,r=2,$fn=100);
            }
        }
    translate([1, 3, -22])rotate([90,0,-90])resize(newsize=[6,3,1.5])drawtext("JM");
        }
    
}
bottom();