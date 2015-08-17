// Adapter for Printrbot extruder to mount on a MTW MiniMax

thickness = 5; // thickness of bottom plate holding extruder
width = 32; // width of the base
mountThickness = 9; // thickness of piece mounting to MiniMax carriage
holeRes = 50; // hole resolution
motorSupport = 30;

indentDepth = 3; // screw head indent depth

use <../../../quick_modules.scad>;

module printrbotExtruderAdapter(){
    union(){
        // MiniMax mount
        height = 60;
        translate([-13,-29.5,-2.5]) difference(){
            // support structure
            union(){
                roundedRect(width,mountThickness,height,mountThickness);
                rotate([25]) translate([1,8,-1]) cube([width-2,2.5,8.2]);
            }
            
            // rect for making a flat side to sit against the minimax mounting plate
            translate([0,-2.5,-1]) cube([width,thickness,height*2]);
            
            // screw holes
            #color("blue") translate([4.85,10,52], $fn=holeRes) rotate([90]) cylinder(d=3.5,h=thickness*2);
            #color("red") translate([27.25,10,52], $fn=holeRes) rotate([90]) cylinder(d=3.5,h=thickness*2);
            #color("blue") translate([7,10,9.2], $fn=holeRes) rotate([90]) cylinder(d=3.5,h=thickness*2);
            
            
            stickOut = mountThickness-indentDepth;
            
            // idents for screw heads
            translate([4.85,stickOut,52], $fn=holeRes) rotate([270]) cylinder(d=6,h=thickness*2);
            translate([27,stickOut,52], $fn=holeRes) rotate([270]) cylinder(d=6,h=thickness*2);
            translate([7,stickOut,9.2], $fn=holeRes) rotate([270]) cylinder(d=6,h=thickness*2);
        }
        
        // Mount for extruder
        translate([1,2,0]) rotate(90) difference(){
            translate([0,-17,0]) centeredRoundedRect(50,width+motorSupport,thickness,3);
            
            translate([2,-2.5,0]) union(){
                 // UBIS hotend hole
                translate([-6.5,0,-1]) cylinder(d=17.5, h=thickness*2, center=true, $fn=holeRes);
            
                // mounting holes
                color("blue") translate([-15,8,-1]) cylinder(d=3.5, h=thickness*2, center=true, $fn=holeRes);
                color("purple") translate([15,8,-1]) centeredRoundedRect(8,3.5,thickness*2, 3.5);
            
                color("red") translate([-15,-8,-1]) cylinder(d=3.5, h=thickness*2, center=true, $fn=holeRes);
                color("green") translate([15,-8,-1]) centeredRoundedRect(8,3.5,thickness*2, 3.5);   
            }
        }
        
        // motor support
        color("red") translate([30,3.5,3.5]) union(){
            centeredRoundedRect(30,motorSupport,2,3);
        }
        
        // bracing
        translate([-10.5,-10,11]) rotate([140]) cube([5,35,3], center=true);
        translate([-10.5,-2,22]) rotate([133]) cube([5,62,3], center=true);
    }
}

printrbotExtruderAdapter();