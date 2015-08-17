//prusa i3 Z motor support for short motors
//optional: glue foam to part for a tighter fit

$fn=100;

height_from_ground = 15;
side = 44;
    
difference(){
    minkowski(){
        cube(side,side,height_from_ground);
        cylinder(5,d=3);
        }
     
    translate([3,3,height_from_ground])
        cube(side,side,10);
    }