//kossel 2020 (bowden) extruder mount - mounts to vertical extrusion

$fn=10;

screw_diameter = 3.5;
screw_head = 6.4;

difference(){
    //main body
    cube([50,105,5.5]);

    //holes for screw head
    translate([35,12,2.5]) cylinder(20,d=screw_head);
    translate([35,85,2.5]) cylinder(20,d=screw_head);
    
    //screw holes for mounting to extrusion
    translate([35,12,-1]) cylinder(20,d=screw_diameter);
    translate([35,85,-1]) cylinder(20,d=screw_diameter);
    
    //holes for screw head
    translate([15,35,2.5]) cylinder(20,d=screw_head);
    translate([15,65,2.5]) cylinder(20,d=screw_head);
    
    //screw holes for mounting extruder
    translate([15,35,-1]) cylinder(20,d=screw_diameter);
    translate([15,65,-1]) cylinder(20,d=screw_diameter);
    
    
    //rotate(45) translate([-15,-20,-1]) cube([35,40,50]);
    mirror([0,1,0]) rotate(45) translate([-15,50,-1]) cube([35,40,50]);
    }