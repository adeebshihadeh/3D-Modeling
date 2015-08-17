//endstop mount for kossel 2020

$fn=30;

screw_diameter = 4;
screw_head = 2;
thickness = 5.5;


difference(){
    minkowski(){
        union(){
            cube([7.7,28,thickness]);
            cube([28,9.6,thickness*2]);
            }
            cylinder(h=thickness,d=3);
        }
        
    translate([(7.7/2),24,-1]) cylinder(h=thickness*3,d=screw_diameter);
        
    translate([(7.7/2),4.5,-1]) cylinder(h=thickness*3,d=screw_diameter);
    translate([(7.7/2)+19,4.5,-1]) cylinder(h=thickness*3,d=screw_diameter);
        
    //remove height added by minkowski sum
    translate([-10,-10,thickness*2]) cube(500,500,500);
    translate([-10,11,thickness]) cube(500,500,500);
    translate([-10,20,thickness-screw_head]) cube(500,500,500);
}