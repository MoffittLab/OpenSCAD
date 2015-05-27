// Coverslip Holder V3
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// May 26, 2015

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
                            translate([0,0,0])rotate([0,90,0])cylinder(h=25, r=23, $fn=500);
                            translate([-1,0,0])rotate([0,90,0])cylinder(h=27, r=18, $fn=500);
                        }
                        translate([-1, -40, 0])cube(size=([40,80,40]));
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
                        translate([0,0,0])cube(size=[25,46,23], center=true);
                        translate([0,0,2])cube(size=[28,38,23], center=true);
                    }
                    translate([0,0,0])cube(size=[21,48,19], center=true);
                }
                translate([0,0,-2])cube(size=[18,38,23], center=true);
            }
        }
        for (pos=[-22:44:22]){
            translate([12.5,pos,0])rotate([90,90,0])
            difference(){
                translate([0,0,0-1])cylinder(h=2,r=2,$fn=100);
                translate([0,0,-1.5])cylinder(h=3,r=.75,$fn=100);
            }
        }
    }
    for(theta=[-45:90:45]){
        rotate([theta,0,0])rotate([0,90,0])translate([26,0,1])cube(size=[10,2,2], center=true);
    }
}