// FCS2 Bracket
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// July 10, 2015

include <drawtext.scad>

module insert(){
    difference(){
        cylinder(h=4, r=76/2, $fn=500);
        for (pos=[(-71.5-5)/2:76.5:(71.5+5)/2]){
            translate([pos,0,0])cube(size=[5, 30, 8], center=true);
        }
    }
}
//insert();
difference(){
    difference(){
        difference(){
            difference(){
                translate([0,0,-2])cylinder(h=5, r=60, $fn=4);
                insert();
            }
            translate([0,0,-4])cylinder(h=5,r=30, $fn=500);
            union(){
                translate([86.6/2, 0, (3-8/64*25.4)/2])cylinder(h=8/64*25.4,r=0.3/2*25.4, $fn=500);
                translate([86.6/2, 0, 0])cylinder(h=8, r=0.18/2*25.4, $fn=50, center=true);
                translate([-86.6/2, 0, (3-8/64*25.4)/2])cylinder(h=8/64*25.4,r=0.3/2*25.4, $fn=500);

                translate([-86.6/2, 0, 0])cylinder(h=8, r=0.18/2*25.4, $fn=50, center=true);

            }
        }
    }
    translate([22,25,-2.1])rotate([0,0,-45])mirror([1,0,0])drawtext("JRM V1");
}
//cube(size=[71.25, 5,2], center=true);

//86.6 mm spacing