$fn = 75;

difference(){
    difference(){
        cylinder(15, d=21, center = true);
        translate([0,0,-1])
        cylinder(20, d=19, center = true);
    }
    translate([0,6,-1])
        cylinder(20, d=12, center = true);
    }
translate([0,-11,0])
    cube([18,3,15], center = true);