// Printrboard mount for mounting on extrusions (designed for MTW MiniMax)

use <../../../quick_modules.scad>;

// Printrboard dimensions
printrboardX = 100;
printrboardY = 61;

xyPadding = 3;
thickness = 5;
holeRes = 60;

holeDiam = 5.2; // for M5 screw

union(){
    difference(){
        hull(){
            centeredRoundedRect(printrboardX+(xyPadding*2), printrboardY+(xyPadding*2), thickness, 3);
            
            translate([0,(printrboardY+xyPadding)/2+8]) cylinder(d=6,h=thickness, center=true, $fn=holeRes);
            mirror([0,1,0]) translate([0,(printrboardY+xyPadding)/2+8]) cylinder(d=6,h=thickness, center=true, $fn=holeRes);
        }
        // airflow holes
        numHoles = 7;
        for(i = [0:numHoles-1]){
            offset = 8;
            width = 2;
            completeWidth = (numHoles*width)+(offset*(numHoles-1));
            translate([completeWidth/2-(i*(offset+width)),0,-1]) centeredRoundedRect(width, 50, thickness*2, 2);
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