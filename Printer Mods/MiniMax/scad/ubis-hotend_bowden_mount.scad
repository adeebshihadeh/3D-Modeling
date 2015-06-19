// Ubis hotend mount for MTW MiniMax (Bowden extruder)
// UNTESTED

thickness = 5;
width = 32;
mountThickness = 10;
holeRes = 50;
holeDiam = 3.5;
pushfitDiam = 6; // 6 for M6 pushfit

use <../../../quick_modules.scad>;

module ubisMount(){
    union(){
        // MiniMax mount
        height = 60;
        translate([-13,-29.5,-2.5]) difference(){
            // support structure
            union(){
                roundedRect(width,mountThickness,height,mountThickness);
                rotate([25]) translate([1,8,-1]) cube([width-2,2.5,8.2], centered=true);
            }
            
            // rect for making a flat side to sit against the MiniMax Y carriage
            translate([0,-2.5,-1]) cube([width,thickness,height*2]);
            
            // screw holes
            #color("blue") translate([5.2,10,52], $fn=holeRes) rotate([90]) cylinder(d=3.5,h=thickness*2);
            #color("red") translate([27.25,10,52], $fn=holeRes) rotate([90]) cylinder(d=3.5,h=thickness*2);
            
            indentDepth = 1.5;
            stickOut = mountThickness-indentDepth;
            
            // idents for screw heads
            translate([5.2,stickOut,52], $fn=holeRes) rotate([270]) cylinder(d=6,h=thickness*2);
            translate([27,stickOut,52], $fn=holeRes) rotate([270]) cylinder(d=6,h=thickness*2);
        }
        
        // Mount for Ubis hotend
        translate([3,-4,0]) difference(){
            union(){
                #color("gray") translate([0,0,7]) cube([20,25,13], center=true);
                translate([0,-2,0]) centeredRoundedRect(width,35,thickness,3);
            }
            // hotend hole
            translate([0,0,0]) cylinder(d=17.5, h=thickness*2, center=true, $fn=holeRes);
            
            // pushfit hole
            translate([0,0,0]) cylinder(d=pushfitDiam, h=20, $fn=holeRes);
            
            // holes for screws to secure hotend
            #translate([0,7.5,6]) rotate([0,90,0]) cylinder(d=3,h=20,$fn=holeRes,center=true);
            #translate([0,-7.5,6]) rotate([0,90,0]) cylinder(d=3,h=20,$fn=holeRes,center=true);
        }
    }
}

ubisMount();