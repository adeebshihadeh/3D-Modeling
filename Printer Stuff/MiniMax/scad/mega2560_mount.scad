// RAMPS 1.4 mount for 20mm extrusion

extrusionMountingScrewDiam = 5.2;
thickness = 5; // mount thickness

difference(){
    hull(){
        cube([65,110,thickness], center=true);
        
        translate([(65/2)+5.5,0,0]) cylinder(d=5,h=thickness, $fn=90, center=true);
        translate([-((65/2)+6.5),0,0]) cylinder(d=5,h=thickness, $fn=90, center=true);
    }
    
    // screw holes
    translate([26.5,33.2,0]) cylinder(d=3.5,h=thickness*2,$fn=90,center=true);
    translate([-21.5,33.2,0]) cylinder(d=3.5,h=thickness*2,$fn=90,center=true);
    translate([26.5,-42,0]) cylinder(d=3.5,h=thickness*2,$fn=90,center=true);
    translate([-22,-48,0]) cylinder(d=3.5,h=thickness*2,$fn=90,center=true);
    
    // extrusion mounting holes
    translate([35.5,0,0]) cylinder(d=extrusionMountingScrewDiam,h=thickness*2,$fn=90,center=true);
    translate([-38,0,0]) cylinder(d=extrusionMountingScrewDiam,h=thickness*2,$fn=90,center=true);
    
    // holes to save plastic
    translate([-15,-10,0]) cylinder(d=25,h=thickness*2,$fn=3,center=true);
    translate([15,15,0]) cylinder(d=25,h=thickness*2,$fn=3,center=true);
    translate([20,-20,0]) cylinder(d=18,h=thickness*2,$fn=3,center=true);
    translate([-12,17,0]) cylinder(d=25,h=thickness*2,$fn=3,center=true);
}