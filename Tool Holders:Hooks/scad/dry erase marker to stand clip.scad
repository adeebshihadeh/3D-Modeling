// Whiteboard stand marker clip

$fn = 40;

union(){
// clip for marker
color("red")
    difference(){
        difference(){
        	cylinder(15, d=20, center = true);
        
        	translate([0,0,-1]) cylinder(18, d=17, center = true);
        }
        translate([5,0,-1]) cylinder(20,d=13, center = true);
    }

    // clips for whiteboard
    translate([-18,0,0]) rotate([0,180,0])
    difference(){
        difference(){
        	cylinder(15, d=18, center = true);
        
        	translate([0,0,-1]) cylinder(18, d=15.5, center = true);
        }
        
        translate([3,0,-1]) cylinder(20,d=13, center = true);
    }
}