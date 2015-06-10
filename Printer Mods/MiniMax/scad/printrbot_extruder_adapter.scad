// Adapter for Printrbot extruder to mount on MiniMax

thickness = 5;
holeRes = 50;

use <../../../quick_modules.scad>;

module printrbotExtruderAdapter(){
    union(){
        // MiniMax mount
        translate([-13,-30,-2.5]) difference(){
            roundedRect(30,thickness,60,3);
            
            // rect for making a flat side to sit against the minimax mounting plate
            translate([0,-3,0]) cube([30,thickness,60]);
            
            // screw holes
            translate([5,10,52], $fn=holeRes) rotate([90]) cylinder(d=3.2,h=thickness*2);
            translate([27,10,52], $fn=holeRes) rotate([90]) cylinder(d=3.2,h=thickness*2);
            
            // idents for screw heads
            translate([5,3,52], $fn=holeRes) rotate([270]) cylinder(d=6,h=thickness*2);
            translate([27,3,52], $fn=holeRes) rotate([270]) cylinder(d=6,h=thickness*2);
        }
        
        // Mount for extruder
        rotate(90) difference(){
            //cube([50,22,thickness], center=true);
            translate([0,-2,0]) centeredRoundedRect(50,30,thickness,3);
                
            // UBIS hotend hole
            translate([-6.5,0,-1]) cylinder(d=17.5, h=thickness*2, center=true, $fn=holeRes);
            
            // mounting holes
            color("blue") translate([-15,8,-1]) cylinder(d=3, h=thickness*2, center=true, $fn=holeRes);
            color("purple") translate([15,8,-1]) cylinder(d=3, h=thickness*2, center=true, $fn=holeRes);
            
            color("red") translate([-15,-8,-1]) cylinder(d=3, h=thickness*2, center=true, $fn=holeRes);
            color("green") translate([15,-8,-1]) cylinder(d=3, h=thickness*2, center=true, $fn=holeRes);
        }
        hull(){
            rotate([25]) translate([-12,-22,11]) cube([28,3,8], centered=true);
        }
    }
}

printrbotExtruderAdapter();