//kossel 2020 linear rail bottom support piece

$fn=35;

width = 22;
rail_width = 13;
screw_head = 6.5;
screw_diameter = 4;

difference(){
    cube([width,12.5,5.5]);
    
    //hole for rail to rest on
    translate([(width-rail_width)/2,9.2,-1])
        cube([rail_width,10,20]);
    
    //screw hole
    translate([11,4.5,-1])
        cylinder(20,d=screw_diameter);
    //screw head hole
    translate([11,4.5,3])
        cylinder(20,d=screw_head);    
    
    translate([0,-5,-1])
    rotate(45) cube([7,15,20]);
 
    mirror([0,1,0])
    translate([width,-5,-1])
    rotate(45) cube([7,15,20]);
    }
