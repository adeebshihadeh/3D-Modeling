// Bowden adapter for printrbot alu extruder

screwDiam = 3;
thickness = 5;
holeRes = 50;
pushfitDiam = 6; //6 for M6 pushfit

use <../../../quick_modules.scad>;

union(){
    difference(){
        centeredRoundedRect(40,23,thickness,3);
        
        // pushfit hole
        translate([6.5,0,-1]) cylinder(d=pushfitDiam,h=thickness*2,$fn=holeRes,center=true);
        
        // screw holes
        translate([15,8,-1]) cylinder(d=screwDiam,h=thickness*2,$fn=holeRes,center=true);
        translate([-15,8,-1]) cylinder(d=screwDiam,h=thickness*2,$fn=holeRes,center=true);
        translate([15,-8,-1]) cylinder(d=screwDiam,h=thickness*2,$fn=holeRes,center=true);
        translate([-15,-8,-1]) cylinder(d=screwDiam,h=thickness*2,$fn=holeRes,center=true);
    }
}