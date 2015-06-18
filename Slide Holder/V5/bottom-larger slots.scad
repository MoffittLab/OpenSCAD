// Coverslip Holder V5
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// June 13, 2015
include <../../OpenSCADModules/drawtext.scad>

module supports() {
    intersection(){
        difference(){
            cylinder(r=24, h=40, $fn=500);
            translate([0,0,-1])cylinder(r=21, h=42, $fn=500);
        }
        for (theta=[-45:90:45]){
            rotate([0,0,theta])translate([0,9, 21.5])cube(size=[5,45,45], center=true);
        }
    }
}
//supports();

module bottom(){
        //Add gripping points
        union(){
            //Add upper supports
            union(){
                // Cut out the coverslip positions
                difference(){
                    //Cut away the top
                    difference(){
                        //Cut away inner cylinder
                        difference(){
                            translate([0,0,0])rotate([0,90,0])cylinder(h=44, r=24, $fn=500);
                            translate([-1,0,0])rotate([0,90,0])cylinder(h=46, r=18, $fn=500);
                        }
                        translate([-1, -40, 0])cube(size=([46,80,40]));
                    }
                    for (pos=[4:6.7:40]){
                        translate([pos, 0, 0])rotate([0,90,0])cylinder(h=2, r=24.5, $fn=500);
                    }
                }
                translate([22,0,-11.5])difference(){
                    //Cut away ends
                    difference(){
                        //Cut away central volume
                        difference(){
                            translate([0,0,-1])cube(size=[44,48,25], center=true);
                            translate([0,0,4])cube(size=[45,40,23], center=true);
                        }
                        translate([0,0,-1])cube(size=[36,50,13], center=true);
                    }
                    translate([0,0,-3])cube(size=[36,40,23], center=true);
                }
            }
            for (pos=[-21:45:28]){
                translate([22.5,pos,0])rotate([90,90,0])cylinder(h=3,r=2,$fn=100);
            }
        }
        translate([44,0,0])rotate([-90,0,90])supports();
    
}
bottom();
