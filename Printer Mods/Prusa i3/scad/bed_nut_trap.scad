// Prusa i3 Bed nut trap

use <MCAD/boxes.scad>;

// parameters
yCarriageThickness = 4.25;
nutWidth = 6;
screwDiam = 3.8;
thickness = yCarriageThickness*2;

module bedNutTrap(){
    difference(){
        roundedBox([20,20,thickness],3,true,$fn=100);
        
        // slot to attach to Y carriage
        translate([3,3,0]) roundedBox([20,20,yCarriageThickness],3,true,$fn=100);
        
        // screw hole
        cylinder(d=screwDiam,h=thickness*1.01,center=true,$fn=100);
    }
}

bedNutTrap();