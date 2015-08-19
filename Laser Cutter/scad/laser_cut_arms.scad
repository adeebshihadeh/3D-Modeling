// Laser cut delta arms

use <MCAD/boxes.scad>;

module arm(length = 225, width = 6, thickness = 2, holeDiam = 3.4, offset = 4){
    difference(){
        // arm
        roundedBox([width,length+(offset*2),thickness], width/2, true,$fs=0.01);
        
        // screw holes
        translate([0,length/2,0]) cylinder(d=screwDiam, h= thickness*1.01, center=true, $fs=0.01);
        translate([0,-(length/2),0]) cylinder(d=screwDiam, h= thickness*1.01, center=true, $fs=0.01);
    }
}

arm();