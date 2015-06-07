//kossel 2020 replacement extruder

$fn=30;

ID=3;
screw_diameter = 4;
screw_head_diameter = 6.5;
screw_head_height = 2.5;
thickness = 5;
ID = 3;

difference(){
union(){
    difference(){
           cube([40,9,thickness]);
        
          //screw holes
          offset = 4.7;
          translate([offset,4,-1]) cylinder(h=10,d=screw_diameter);
          translate([40-offset,4,-1]) cylinder(h=10,d=screw_diameter);
        
          //screw head indent
          translate([offset,4,thickness-screw_head_height]) cylinder(h=10,d=screw_head_diameter);
          translate([40-offset,4,thickness-screw_head_height]) cylinder(h=10,d=screw_head_diameter);
        }
    
    translate([40-10,0,0])  union(){
        translate([0,9,0]) cube([10,24-9,thickness]);
        translate([3,20,thickness]) cylinder(h=10,d=ID);
        }
    }
translate([20,18,-1]) cylinder(h=200,d=22);
}