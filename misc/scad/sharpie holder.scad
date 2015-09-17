$fn = 75;

difference(){
    difference(){
        cylinder(15, d=13, center = true);
        translate([0,0,-1])
        cylinder(20, d=11, center = true);
    }
    translate([0,6,-1])
        cylinder(20, d=11, center = true);
    }
translate([0,-7,0])
    cube([11,3,15], center = true);