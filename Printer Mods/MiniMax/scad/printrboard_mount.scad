// Printrboard mount for mounting on extrusions

use <../../../quick_modules.scad>;

// Printrboard dimensions
printrboardX = 100;
printrboardY = 61;

xyPadding = 3;
thickness = 3;
holeRes = 60;


holeDiam = 5.2; //  for M5 screw

union(){
    difference(){
        hull(){
            centeredRoundedRect(printrboardX+(xyPadding*2), printrboardY+(xyPadding*2), thickness, 3);
            
            translate([0,(printrboardY+xyPadding)/2+8]) cylinder(d=6,h=thickness, center=true, $fn=holeRes);
            mirror([0,1,0]) translate([0,(printrboardY+xyPadding)/2+8]) cylinder(d=6,h=thickness, center=true, $fn=holeRes);
        }
        // airflow holes
        for(i = [0:6]){
            //rotate(90*i)
            translate([8*i-(7*2+8),0,-1]) centeredRoundedRect(2, 50, thickness*2, 2);
        }
        
        // printrboard mount holes
        translate([printrboardX/2-3.5,printrboardY/2-3.5,-1]) cylinder(d=3.3, h=thickness*2, center=true, $fn=holeRes);
        translate([printrboardX/2-3.5,-(printrboardY/2-3.5),-1]) cylinder(d=3.3, h=thickness*2, center=true, $fn=holeRes);
        translate([-(printrboardX/2-3.5),printrboardY/2-3.5,-1]) cylinder(d=3.3, h=thickness*2, center=true, $fn=holeRes);
        translate([-(printrboardX/2-3.5),-(printrboardY/2-3.5),-1]) cylinder(d=3.3, h=thickness*2, center=true, $fn=holeRes);
        
        // extrusion mount holes
        translate([0,printrboardY/2+6,-1]) cylinder(d=holeDiam, h=thickness*2, center=true, $fn=holeRes);
        translate([0,-(printrboardY/2+6),-1]) cylinder(d=holeDiam, h=thickness*2, center=true, $fn=holeRes);
    }
}