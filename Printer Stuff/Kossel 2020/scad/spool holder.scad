//spool holder that attaches to the side of a kossel 2020 with m3 t nuts

$fn = 35;

screw_diameter = 4;
screw_head = 7;
screw_head_height = 2;
height = 5.5;


    
difference(){
    union(){
        cube([22,40,height]);
        
        //arm for spool holder
        translate([0,0,0]) cube([87,14,height]);
        
        //support for extrusion attachment and main arm
        translate([20,3,0]) rotate(40) cube([15,15,height]);
    }
    
    //screw head holes for extrusion mounting
    translate([10,10,height-screw_head_height]) cylinder(height+20,d=screw_head);  
    translate([10,29,height-screw_head_height]) cylinder(height+20,d=screw_head);
    
    //screw holes for mounting to extrusion
    translate([10,10,-1]) cylinder(height+2,d=screw_diameter);  
    translate([10,29,-1]) cylinder(height+2,d=screw_diameter);

    //extension screw holes
    translate([70,7,-1]) cylinder(height+2,d=screw_diameter);
    translate([80,7,-1]) cylinder(height+2,d=screw_diameter);
    }

offset = 50;    
    
translate([0,offset,0])    
difference(){
    union(){
        cube([55,14,height]);
        
        //prevents spool from falling off
        translate([45,0,0]) cube([10,25,height]);
        }
    //screw holes
    translate([10,7,0]) cylinder(height+2,d=screw_diameter);
    translate([20,7,0]) cylinder(height+2,d=screw_diameter);
    }