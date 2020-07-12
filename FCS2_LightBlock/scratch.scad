// Alternative FCS2 Top
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// June 13, 2015
include <..\OpenSCADModules\threads.scad>
include <..\OpenSCADModules\drawtext.scad>

module clearance(){
    intersection(){
        difference(){
            cylinder(r=31.0, h=7.0, $fn=500);
            translate([0,0,-.5])cylinder(r=25.0, h=8.0, $fn=500);
        }
        rotate([0,0,90])translate([-20, -7.5, 0])cube(size=[65, 15, 7]);
    }
}

// Create the notches for the clamps (will be deleted) 
module notches(){
    intersection(){
        difference(){
            cylinder(r=31.0, h=7.0, $fn=500);
            translate([0,0,-.5])cylinder(r=27.0, h=8.0, $fn=500);
        }
        for(theta=[45:90:360]){
            rotate([0,0,theta])translate([-35, -5.5, 0])cube(size=[65, 11, 7]);
        }
    }
}

module top(){
    //Create clearance for 4-pin
    difference(){
        //Remove notches for screws
        difference(){
            //Remove notches for the clamps
            difference(){
                //Create threads
                difference(){
                    //Create flow holes
                    difference(){
                        //Create recess for holding sample
                        difference(){
                            //Subtract central hole
                            difference(){
                                //Fuse top and bottom plate
                                union(){
                                    cylinder(r=30.0, h=6.0, $fn=500);
                                    translate([0,0,-6])cylinder(r=21.5, h=6.0, $fn=500);
                                }
                                translate([0,0,-7])cylinder(r=13.0, h=14, $fn=500);
                            }
                            translate([0,0,-6.25])cylinder(r=20.5, h=1.5, $fn=500);//1.25 mm
                        }
                        for (pos=[-17.5:35:17.5]){
                            translate([pos,0,-7])cylinder(r=0.5, h=14, $fn=500);
                        }
                    }
                    for (pos=[-17.5:35:17.5]){
                        //translate([pos, 0, 3])english_thread(diameter = (1/4+1/128), threads_per_inch = 28, length = 1/2, inner=true);
                    }
                }
                rotate([0,0,-10])translate([0,0,-.5])notches();
            }
            for (i=[0:1]){
            rotate([0,0,-19])mirror([i,0,0])translate([28.5,0,-.5])union(){
                cylinder(r=1, h=7, $fn=500);
                translate([1,0,3.5])cube(size=[2,2,7], center=true);
                }
            }
        }
        translate([0,0,-.5])clearance();
    }
}

module block1(){
    difference(){
        union(){
            cylinder(r1=11, r2=11.5, h=1.5, $fn=500); // Main block
            translate([0,0,5])rotate([0,-90,0])cylinder(r=5, h=2, $fn=5);
        }
        rotate([0,0,90])translate([-1,5,1])scale([0.5, 0.5, 1])drawtext("1");
    }
}

module block2(){
    difference(){
        union(){
            cylinder(r1=12, r2=12.5, h=1.5, $fn=500); // Main block
            translate([0,0,5])rotate([0,-90,0])cylinder(r=5, h=2, $fn=5);
        }
        rotate([0,0,90])translate([-1,5,1])scale([0.5, 0.5, 1])drawtext("2");
    }
}

module block3(){
    difference(){
        union(){
            cylinder(r1=13, r2=13.5, h=1.5, $fn=500); // Main block
            translate([0,0,5])rotate([0,-90,0])cylinder(r=5, h=2, $fn=5);
        }
        rotate([0,0,90])translate([-1,5,1])scale([0.5, 0.5, 1])drawtext("3");
    }
}

module block4(){
    difference(){
        union(){
            cylinder(r1=14, r2=14.5, h=1.5, $fn=500); // Main block
            translate([0,0,5])rotate([0,-90,0])cylinder(r=5, h=2, $fn=5);
        }
        rotate([0,0,90])translate([-1,5,1])scale([0.5, 0.5, 1])drawtext("4");
    }
}


color("Green")top();
//translate([0,0,7.5])block1();
//translate([0,0,7.5])block2();
//translate([0,0,7.5])block3();
translate([0,0,7.5])block4();
//notches();

//for (pos=[-17.5:35:17.5]){
//                          translate([pos, 0, 3])cylinder(r=3/16*25.4, h=10, $fn=500);
//                        }



    