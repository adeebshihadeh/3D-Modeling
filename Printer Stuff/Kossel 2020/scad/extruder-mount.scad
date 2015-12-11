// kossel 2020 (bowden) extruder mount - mounts to motor attached to extruder such as Airtripper's Bowden Extruder

use <MCAD/boxes.scad>;

// all screw settings are set for M3 screws
screw_diameter = 4;
screw_head = 7; // screw head diameter
screw_head_height = 2; // use 0 for no screw head indent
screw_hole_offset = 7; // offset of extruder motor mounting holes from the edge
width = 43;
length = 35;
hole_sep = 30;
thickness = 6;

module extruderMount(){
    difference(){
        translate([width/2,length/2,0]) roundedBox([width,length,thickness],3,true,$fn=30);

        translate([width/2,10,0]) for(x=[-1,1]){
            translate([hole_sep/2*x,0,0]) cylinder(h=thickness+1,d=screw_diameter,center=true,$fn=30);
            // screw head indent
            translate([hole_sep/2*x,0,thickness/2-screw_head_height]) cylinder(h=20,d=screw_head,$fn=30);
        }
        
        translate([width/2,length-screw_hole_offset,0]) for(x=[-1,1]){
            translate([hole_sep/2*x,0,0]) cylinder(h=thickness+1,d=screw_diameter,center=true,$fn=30);
        }
    }   
}
extruderMount();