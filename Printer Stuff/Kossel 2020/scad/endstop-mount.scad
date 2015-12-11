//endstop mount for kossel 2020

use <MCAD/boxes.scad>;

$fn=30;

screwDiam = 4;
thickness = 5;
holeSep = 19; // endstop mounting hole separation
width = 40;


difference(){
    union(){
        translate([13/2,20,0]) roundedBox([13,40,thickness],3,true);
        translate([width/2,10,thickness/2]) roundedBox([width,20,thickness*2],3,true);
    }
        
    translate([(7.7/2),24,-1]) cylinder(h=thickness*3,d=screw_diameter);
    
    for(x=[-1,1]){
        translate([holeSep/2*x,0,0]) cylinder(d=screwDiam,thickness*4,center=true);
    }
}