// X endstop for K40 laser cutter

thickness = 5;
endstopOffset = 20; // adjust to maximize X travel

difference(){
    cube([25,endstopOffset+thickness/2,20]);
    
    translate([thickness,thickness,-1]) cube([20,50,22]);
    
    // cut away a bit for clearance
    translate([thickness,0,-10]) cube([20,50,20]);
    
    // m3 screw mount
    #translate([18,thickness+1,15]) rotate([90]) cylinder(d=3.2,h=thickness*2,$fn=100);
    
    // microswitch mounting holes
    holeSep = 8.5;
    translate([-thickness/2,endstopOffset,16]) rotate([90,0,90]) cylinder(d=3,h=thickness*2,$fn=100);
    translate([-thickness/2,endstopOffset,16-holeSep]) rotate([90,0,90]) cylinder(d=3,h=thickness*2,$fn=100);
}