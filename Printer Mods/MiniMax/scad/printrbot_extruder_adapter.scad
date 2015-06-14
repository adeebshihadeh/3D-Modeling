// Adapter for Printrbot extruder to mount on MiniMax

thickness = 5;
width = 32;
mountThickness = 7;
holeRes = 50;

use <../../../quick_modules.scad>;

module printrbotExtruderAdapter(){
    union(){
        // MiniMax mount
        height = 60;
        translate([-13,-29.5,-2.5]) difference(){
            // support structure
            union(){
                roundedRect(width,mountThickness,height,mountThickness);
                rotate([25]) translate([1,8,-1]) cube([width-2,2.5,8.2], centered=true);
            }
            
            // rect for making a flat side to sit against the minimax mounting plate
            translate([0,-2.5,-1]) cube([width,thickness,height*2]);
            
            // screw holes
            #color("blue") translate([4.85,10,52], $fn=holeRes) rotate([90]) cylinder(d=3.5,h=thickness*2);
            #color("red") translate([27.25,10,52], $fn=holeRes) rotate([90]) cylinder(d=3.5,h=thickness*2);
            
            // idents for screw heads
            translate([5,5,52], $fn=holeRes) rotate([270]) cylinder(d=6,h=thickness*2);
            translate([27,5,52], $fn=holeRes) rotate([270]) cylinder(d=6,h=thickness*2);
        }
        
        // Mount for extruder
        translate([1,2,0]) rotate(90) difference(){
            //cube([50,22,thickness], center=true);
            translate([0,-2,0]) centeredRoundedRect(50,width,thickness,3);
            
            translate([1,0,0]) union(){
                 // UBIS hotend hole
                translate([-6.5,0,-1]) cylinder(d=17.5, h=thickness*2, center=true, $fn=holeRes);
            
                // mounting holes
                color("blue") translate([-15,8,-1]) cylinder(d=3.5, h=thickness*2, center=true, $fn=holeRes);
                color("purple") translate([15,8,-1]) centeredRoundedRect(8,3.5,thickness*2, 3.5);
            
                color("red") translate([-15,-8,-1]) cylinder(d=3.5, h=thickness*2, center=true, $fn=holeRes);
                color("green") translate([15,-8,-1]) centeredRoundedRect(8,3.5,thickness*2, 3.5);   
            }
        }
        
    }
}

printrbotExtruderAdapter();
