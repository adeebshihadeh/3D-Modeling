// Y endstop mount for K40 laser cutter/engraver

union(){

    difference(){
        cube([25,3,5]);
        
        // mounting holes
        holeSep = 18;
        #rotate([90]) translate([3.5,2.5,0]) cylinder(d=3.5,h=10,$fn=90,center=true);
        #rotate([90]) translate([3.5+holeSep,2.5,0]) cylinder(d=3.5,h=10,$fn=90,center=true);
    }
    
    translate([8.5,0,-15]) difference(){
        cube([4,15,20]);
        
         // endstop mounting holes
        holeSep = 8;
        #rotate([0,90,0]) translate([-5.5,8.5,0]) cylinder(d=2.5,h=10,$fn=90,center=true);
        #rotate([0,90,0]) translate([-5.5-holeSep,8.5,0]) cylinder(d=2.5,h=10,$fn=90,center=true);
    }
}