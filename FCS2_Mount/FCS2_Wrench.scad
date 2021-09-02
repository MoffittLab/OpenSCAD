// FCS2 Bracket
// Jeffery Moffitt
// jeffmoffitt@gmail.com
// July 10, 2015

module insert(){
    difference(){
        cylinder(h=3, r=76/2, $fn=500);
        for (pos=[(-71.5-5)/2:76.5:(71.5+5)/2]){
            translate([pos,0,0])cube(size=[5, 30, 8], center=true);
        }
    }
}
//insert();
difference(){
    difference(){
        translate([0,0,-2])cylinder(h=4, r=50, $fn=6);
        insert();
    }
    translate([0,0,-4])cylinder(h=5,r=30, $fn=500);
}
//cube(size=[71.25, 5,2], center=true);