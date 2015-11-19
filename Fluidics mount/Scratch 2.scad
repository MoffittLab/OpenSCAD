//Flow system fluid mounts
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//November 13, 2015
//CC BY NC SA


module falcon15(){
    union(){
        //Base
        translate([0,0,0])cylinder(h=24, r2=16.5/2, r1=6.5/2, $fn=500);
        translate([0,0,23.9])cylinder(h=87, r2=17/2, r1=16.5/2, $fn=500);
    }
}
//falcon15();

module base(){
    difference(){
        cube(size=[100, 50, 40]);
        for (x=[12.5:25:50]){
            for (y=[12.5:25:100]){
                translate([y,x,5])falcon15();
            }
        }
    }
}
base();