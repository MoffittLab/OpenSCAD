//Finding Fluidics Threads
//Jeffrey Moffitt
//jeffmoffitt@gmail.com
//June 4, 2015
//CC BY NC SA

//Add the thread module
include <..\OpenSCADModules\threads.scad>
include <..\OpenSCADModules\drawtext.scad>

//difference(){
//    difference(){
//        cube(size=[50,10,5], center=true);
//        union(){
//            translate([-20, 0, -2])english_thread(diameter = 1/4, threads_per_inch = 28, length = 1/8, inner=true); //Internal conversion from in to mm is done!
//            translate([-12.5, 0, 0])english_thread(diameter = 1/4, threads_per_inch = 28, length = 1/8, inner=true);
//        }
//    }
//    union(){
//        translate([-5, 0, -3])english_thread(diameter = (1/4+1/32), threads_per_inch = 28, length = 1/8, inner=true);
//        translate([-7.5, 0, 0])english_thread(diameter = (1/4+1/32), threads_per_inch = 28, length = 1/8, inner=true);
//    }
//}

difference(){
    difference(){
        cube(size=[25,10,8], center=true);
        translate([-5, 0, -4.5])english_thread(diameter = (1/4+1/64), threads_per_inch = 28, length = 1/2, inner=true);
    }
    translate([5, 0, 0])english_thread(diameter = (1/4+1/64), threads_per_inch = 28, length = 1/4, inner=true);
}

    