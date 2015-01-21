//this is a fan mount for a Greg's Extruder, 40mm fan, & Jhead mk8
//screws into hotend mounting screw holes
$fn = 50;

difference(){
    difference(){
        cube([40,10,2]);

        translate([30,5,-1])
            cylinder(20,d=3);
        }
    translate([15,5,-1])
        cylinder(20,d=3);
    }
    
translate([0,10,0])
        difference(){
        cube([40,40,2]);
        translate([20,20,0])
        cylinder(38,d=38);
        }
