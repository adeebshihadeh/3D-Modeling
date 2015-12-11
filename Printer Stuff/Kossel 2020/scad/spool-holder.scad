// kossel 2020 spool holder

use <MCAD/boxes.scad>;

// setup to use M8 rod
rodDiam = 8.3;

mountWidth = 64;
mountThickness = 5;
mountScrewDiam = 3.5;
mountHoleSep = 50;

spoolMountHeight = 90;
spoolMountWidth = 30;
spoolMountDepth = 20;

module spoolHolder(){
	difference() {
		union(){
			roundedBox([spoolMountDepth, mountWidth, mountThickness], 5, true,$fn=25,center=true);
			translate([0, 0, spoolMountHeight/2]) roundedBox([spoolMountDepth, spoolMountWidth, spoolMountHeight],5,true,center=true,$fn=30);
		}
        
        offset = 8;
        translate([0, 0, spoolMountHeight-offset]) rotate([90,0,120]) union(){
            cylinder(d=rodDiam,h=spoolMountDepth*2,$fn=45,center=true);
        }
        for(i=[-1,1]){
            translate([0,mountHoleSep/2*i,0]) cylinder(d=mountScrewDiam,h=mountThickness+1,$fn=25,center=true);   
        }
	}
}
spoolHolder();