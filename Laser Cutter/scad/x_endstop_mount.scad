// X endstop for K40 laser cutter

thickness = 5;
endstopOffset = 20; // adjust to maximize X travel

module xEndstopMount(thickness=5,endstopOffset = 20, endstopMountingHoleSep = 8.5){
    depth = endstopOffset+2.5;
    difference(){
        union(){
            difference(){
                cube([18.5,depth,10]);
                translate([-thickness,thickness,-1]) cube([18.5,depth,12]);
            }
            translate([18.5-thickness,0,10]) cube([thickness,depth,10]);
        }
       #translate([2.5,thickness/2,5]) rotate([90]) cylinder(d=3.6,h=thickness*1.01,center=true,$fn=40);
        
        // endstop mounts
        translate([0,0,8]) for(x=[-1,1]){
            #translate([16,endstopOffset,x*(endstopMountingHoleSep/2)]) rotate([0,90,0]) cylinder(d=3,h=thickness*1.01,center=true,$fn=40);
        }
    }
}

!xEndstopMount();