//Flow system fluid mounts
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//November 13, 2015
//CC BY NC SA

// Add grip points
// Add Supports
union(){
    for (x=[0:75:75]){
        translate([0,x+2.5,0])rotate([90,0,0])cube(size=[125, 10, 5]);
    }
    // Build Lid Holder
    difference(){
        cube(size=[125, 75, 5]);
        for (x=[25:25:50]){
            for (y=[25:25:100]){
                union(){
                    translate([y,x,-0.05])cylinder(r=20.5/2, h=5.1, $fn=500);
                    translate([y,x,1])cylinder(r=23.25/2, h=4.1, $fn=500);
                }
            }
        }
    }
}