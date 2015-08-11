// Prusa i3 platform for Cura

translate([0,0,-11]) union(){
    // Y carriage
    translate([-101,-158]) import("/Users/adeebshihadeh/Downloads/i3-original.stl");
    
    // bed
    color("green") #translate([3,3,8]) cube([215,215,3], center=true);
}