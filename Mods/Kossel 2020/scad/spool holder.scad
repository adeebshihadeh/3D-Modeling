//spool holder that attaches to the side of a kossel 2020 with m3 t nuts

$fn = 35;

//frame attachment piece
difference(){
    cube([22,40,5.5]);

    //screw holes
    translate([10,10,-1])
        cylinder(20,d=3.5);  
    translate([10,29,-1])
        cylinder(20,d=3.5);
    
    //screw head indent
    translate([10,10,3])
        cylinder(20,d=6);  
    translate([10,29,3])
        cylinder(20,d=6);
    }
    
//main spool holding arm
translate([22,0,0])
    difference(){
        cube([87,14,5.5]);

        translate([70,7,-1])
            cylinder(20,d=3.5);
        
        translate([80,7,-1])
            cylinder(20,d=3.5);
        }
        
//support for extrusion attachment and main arm
translate([20,3,0])
rotate(40)
        cube([15,15,5.5]);