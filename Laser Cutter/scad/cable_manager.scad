// Laser cutter cable management

// configurable settings
// all units in mm
thickness = 3;
screwOD = 4.7;
cableOD = 3.2;
length = 25;
cableGripThicknessMultiplier = 1.55;

module cableManager(){
    union(){
        // part that mounts on the screw
        difference(){
            cylinder(d=screwOD*2,h=thickness,$fn=100);
            translate([0,0,-1]) cylinder(d=screwOD,h=thickness*2,$fn=100);
        }
        translate([screwOD/2,-(screwOD*1.2/2),0]) cube([length,screwOD*1.2,thickness]);
        
        // cable grip
        gripHeight = screwOD*1.2;
        translate([length+0.5,gripHeight/2,(thickness+cableOD*1.2/2)-cableOD*0.1]) rotate([90]) difference(){
            cylinder(d=cableOD*cableGripThicknessMultiplier,h=gripHeight,$fn=100);
            translate([0,0,-1]) cylinder(d=cableOD,h=gripHeight*2,$fn=100);
            translate([0,2,-1]) cylinder(d=cableOD,h=gripHeight*2,$fn=100);
        }
    }
}

cableManager();