// kossel spool holder

module spoolHolder(height=20, screwDiam = 3.5, screwHeadDiam = 6.5, diameter=35){
    difference(){
        cylinder(d=diameter,h=height,center=true,$fn=50);
        
        // 608 bearing hole
        translate([3,0,height/2-7/2]) cylinder(d=22.5,h=7,center=true,$fn=50);
        
        translate([3,0,0]) rotae=cylinder(d=8.5,h=height+1,center=true,$fn=50);
        
        for(y=[-1,1]){
            offset = 5;
            translate([0,(diameter/2-offset)*y,0]) rotate([90,0,90]) cylinder(d=screwDiam,h=diameter+1,center=true,$fn=30);
            // screw head hole
            #translate([diameter/2,(diameter/2-offset)*y,0]) rotate([90,0,90]) cylinder(d=screwHeadDiam,h=diameter,center=true,$fn=30);
        }
        translate([-27,0,0]) cube([diameter,diameter, height+1],center=true);
        
    }
}

spoolHolder();