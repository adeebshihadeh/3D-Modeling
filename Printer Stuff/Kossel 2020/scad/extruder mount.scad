//kossel 2020 (bowden) extruder mount - mounts to vertical extrusion

$fn=30;

screw_diameter = 4;
screw_head = 7;
screw_head_height = 2;
height = 5.5;

difference(){
    //main body
    //makes rounded corners
    minkowski(){
        cube([50,105,height]);
        cylinder(h=height,d=3);
        }
    
    //subtract Z height added by minkowski sum
    translate([-5,-5,height]) cube(height*200);

    //holes for screw head
    translate([35,12,height-screw_head_height]) cylinder(20,d=screw_head);
    translate([35,85,height-screw_head_height]) cylinder(20,d=screw_head);
    
    //screw holes for mounting to extrusion
    translate([35,12,-1]) cylinder(20,d=screw_diameter);
    translate([35,85,-1]) cylinder(20,d=screw_diameter);
    
    //holes for screw head
    translate([15,35,height-screw_head_height]) cylinder(20,d=screw_head);
    translate([15,65,height-screw_head_height]) cylinder(20,d=screw_head);
    
    //screw holes for mounting extruder
    translate([15,35,-1]) cylinder(20,d=screw_diameter);
    translate([15,66,-1]) cylinder(20,d=screw_diameter);
    }