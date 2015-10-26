// kossel 2020 (bowden) extruder mount - mounts to motor attached to extruder such as Airtripper's Bowden Extruder

use <MCAD/boxes.scad>;

$fn=30;

screw_diameter = 4;
screw_head = 7;
screw_head_height = 2;
width = 50;
height = 60;
extrusion_mounting_hole_sep = 45;
motor_mount_hole_sep = 30;
thickness = 5.5;

difference(){
    roundedBox([width,height,thickness],3,true);

    translate([17,0,0]) for(y=[-1,1]){
        translate([0,extrusion_mounting_hole_sep/2*y,0]) cylinder(h=thickness+1,d=screw_diameter,center=true);
        // screw head indent
        translate([0,extrusion_mounting_hole_sep/2*y,thickness/2-screw_head_height]) cylinder(h=20,d=screw_head);
    }
    
    translate([-15,0,0]) for(y=[-1,1]){
        translate([0,motor_mount_hole_sep/2*y,0]) cylinder(h=thickness+1,d=screw_diameter,center=true);
    }
}