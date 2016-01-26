// Wash Chamber V1
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// December 22, 2015//Modified January 26, 2016
include <../../OpenSCADModules/drawtext.scad>

module catch() {
    cube(size=([9,3,3]));
    translate([3,0,-3])cube(size=([3,3,3]));
}
//catch();

module case() {
    difference(){
        translate([0,0,0])cube(size=([50, 59, 45])); //Outside box 99
        translate([3,3,3])cube(size=([44, 53, 43])); // Inside 93
    }
    //Add ribs
    for (pos=[3:5:54]){
        union(){
            translate([0, pos, 0])cube(size=([6,3,43]));
            translate([44, pos, 0])cube(size=([6,3,43]));
        }
    }
   //Add lid holder and symmetry breaking mark
    translate([48/2-9/2,59,42*3/4-3/2])catch();
    translate([0,59/2-9/2,42*3/4-3/2])rotate([0,0,90])catch();
    translate([53,59/2-9/2,42*3/4-3/2])rotate([0,0,90])catch();
}
//case();

module coverslip(){
    translate([4.5,0,0])rotate([0,90,0])cylinder(h=1, r=20, $fn=500);
}
//coverslip();

module latch(){
    union(){
        cube(size=([2, 1, 42/4 + 3/2 + 5]));
        translate([0,-1, 0])cube(size=([2, 1, 1.5]));
    }
} 
//latch();

module cover_latch(){
    union(){
        latch();
        translate([7,0,0])latch();
        translate([0,-4, 42/4 + 3/2 + 5])cube(size=([9,5,1]));
    }
}
//translate([0,0,15])cover_latch();

module cover_loop(){
    rotate([-90,0,0])difference(){
        difference(){
            cylinder(h=1,r=7.5,$fn=500);
            translate([0,0,-.25])cylinder(h=1.5, r=5, $fn=500);
        }
        translate([-10,0,-.5])cube(size=([20,20,2]));
    }
}
//cover_loop();

module cover(){
    union(){//Add latches
        difference(){ //Create top plate
            cube(size=([48, 59, 1]));
            rotate([0,0,45])translate([-10,-10,-.5])cube(size=([20,20,2]));
        }
        union(){//Add latches
            translate([-3, 25, -17])rotate([0,0,90])cover_latch();
            translate([51, 34, -17])rotate([0,0,-90])cover_latch();
        } 
        //Add loop
        translate([24+.5,59/2,0])cover_loop();
    }  
}
//translate([0,0,45])color("red")cover();

module washcontainer(){
    translate([25, 30, 0])difference(){
        cylinder(h=50,r=42, $fn=500);
        translate([0,0,-1])cylinder(h=52,r=40,$fn=500);
    }
}
//washcontainer();

case();
//translate([25,2,23])rotate([0,0,90])coverslip();
//washcontainer();
//translate([0,0,45])color("red")cover();

