// FCS2 Light Block Insert
// Jeffery Moffitt
// jeffrey.moffitt@childrens.harvard.edu
// July 11, 2020
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
                                translate([0,0,-7])cylinder(r=31.9/2, h=14, $fn=500); // Updated from 13 mm to match actual FCS2 measurements
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

module block5(){
    difference(){
        union(){
            translate([0,0,1.5])cylinder(r=18,h=1.5, $fn=500);
            difference(){
                cylinder(r1=11, r2=11.5, h=1.5, $fn=500); // Main block
                translate([0,0,-0.5])cylinder(r=10, h=3, $fn=500);
            }
            translate([0,0,6.5])rotate([0,-90,0])cylinder(r=5, h=2, $fn=5);
        }
        rotate([0,0,90])translate([-2.5,5,2.5])drawtext("5");
    }
}

module block6(){
    difference(){
        union(){
            translate([0,0,1.5])cylinder(r=18,h=1.5, $fn=500);
            difference(){
                cylinder(r1=12, r2=12.5, h=1.5, $fn=500); // Main block
                translate([0,0,-0.5])cylinder(r=10, h=3, $fn=500);
            }
            translate([0,0,6.5])rotate([0,-90,0])cylinder(r=5, h=2, $fn=5);
        }
        rotate([0,0,90])translate([-2.5,5,2.5])drawtext("6");
    }
}

module block7(){
    difference(){
        union(){
            translate([0,0,1.5])cylinder(r=18,h=1.5, $fn=500);
            difference(){
                cylinder(r1=13, r2=13.5, h=1.5, $fn=500); // Main block
                translate([0,0,-0.5])cylinder(r=10, h=3, $fn=500);
            }
            translate([0,0,6.5])rotate([0,-90,0])cylinder(r=5, h=2, $fn=5);
        }
        rotate([0,0,90])translate([-2.5,5,2.5])drawtext("7");
    }
}

module block8(){
    difference(){
        union(){
            translate([0,0,1.5])cylinder(r=18,h=1.5, $fn=500);
            difference(){
                cylinder(r1=14, r2=14.5, h=1.5, $fn=500); // Main block
                translate([0,0,-0.5])cylinder(r=10, h=3, $fn=500);
            }
            translate([0,0,6.5])rotate([0,-90,0])cylinder(r=5, h=2, $fn=5);
        }
        rotate([0,0,90])translate([-2.5,5,2.5])drawtext("8");
    }
}


module block10(){
    difference(){
        union(){
            translate([0,0,3])cylinder(r=18,h=1.5, $fn=500);
            difference(){
                cylinder(r1=30.9/2, r2=31.9/2, h=3, $fn=500); // Main block
                translate([0,0,-0.5])cylinder(r=14, h=3, $fn=500);
            }
            translate([0,0,7.5])rotate([0,-90,0])cylinder(r=5, h=2, $fn=5);
        }
        rotate([0,0,90])translate([-5,5,4])drawtext("10");
    }
}

module block11(){
    difference(){
        union(){
            translate([0,0,3])cylinder(r=18,h=1.5, $fn=500);
            difference(){
                cylinder(r1=31/2, r2=32.0/2, h=3, $fn=500); // Main block
                translate([0,0,-0.5])cylinder(r=14, h=3, $fn=500);
            }
            translate([0,0,7.5])rotate([0,-90,0])cylinder(r=5, h=2, $fn=5);
        }
        rotate([0,0,90])translate([-5,5,4])drawtext("11");
    }
}

module block12(){
    difference(){
        union(){
            translate([0,0,3])cylinder(r=18,h=1.5, $fn=500);
            difference(){
                cylinder(r1=31.5/2, r2=32.5/2, h=3, $fn=500); // Main block
                translate([0,0,-0.5])cylinder(r=14, h=3, $fn=500);
            }
            translate([0,0,7.5])rotate([0,-90,0])cylinder(r=5, h=2, $fn=5);
        }
        rotate([0,0,90])translate([-6,5,4])drawtext("12");
    }
}


//color("Green")top();
//translate([0,0,7.5])block5();
//translate([0,0,7.5])block6();
//translate([0,0,7.5])block7();
//translate([0,0,7.5])block8();
//translate([0,0,7.5])block10();
//translate([0,0,7.5])block11();
translate([0,0,7.5])block12();

//notches();

//for (pos=[-17.5:35:17.5]){
//                          translate([pos, 0, 3])cylinder(r=3/16*25.4, h=10, $fn=500);
//                        }



    