// Prusa i3 X enstop mount

use <MCAD/boxes.scad>;

module xEndstopMount(rodDiam = 8.05, rodSep = 45, endstopHoleSep = 19){
    width = 12.5;
    height = 48;
    thickness = 5;
    
    union(){
        for(x=[-1, 1]){
            translate([0,x*(rodSep/2),-(thickness+rodDiam/4)]) rotate([90,90,90]) difference(){
                cylinder(d=rodDiam*1.45,h=width,$fn=100,center=true);
                cylinder(d=rodDiam,h=width*2,$fn=100,center=true);
                translate([4,0,0]) cylinder(d=rodDiam,h=width*2,$fn=100,center=true);
            }
        }
        difference(){
            cube([width,height,thickness],center=true);
            
            translate([0,5,0]) for(a = [-1, 1]){
                translate([0,a*(endstopHoleSep/2),0]) cylinder(d=4,h=thickness*1.01,$fn=40,center=true);
             }
            
        }
    }
}
xEndstopMount();