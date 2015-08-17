// Kossel raspi b+ mount

raspiHorizontalHoleSep = 48.5;
raspiVerticalHoleSep = 58;

module raspiMount(extrusionMountingScrewDiam = 3.5, extrusionMountingScrewHeadDiam = 6.5, thickness = 5, standoffHeight = 5 /*0 for none*/, raspiMountingScrewDiam = 3.75){
    diam1 = raspiMountingScrewDiam*1.75;
    
    union(){
        difference(){
            union(){
                cylinder(d=diam1,h=thickness,$fn=100);
                translate([raspiHorizontalHoleSep,0,0]) cylinder(d=diam1,h=thickness,$fn=100);
                translate([0,-(raspiMountingScrewDiam/2),0]) cube([raspiHorizontalHoleSep,raspiMountingScrewDiam,thickness]);
                
                // standoffs
                translate([raspiHorizontalHoleSep,0,thickness]) cylinder(d=diam1,h=standoffHeight,$fn=100);
                translate([0,0,thickness]) cylinder(d=diam1,h=standoffHeight,$fn=100);
            }
            translate([0,0,-1]) cylinder(d=raspiMountingScrewDiam,h=(thickness+standoffHeight)*2,$fn=100);
            translate([raspiHorizontalHoleSep,0,-1]) cylinder(d=raspiMountingScrewDiam,h=(thickness+standoffHeight)*2,$fn=100);
        }
        
        // extrusion mounting bar
        difference(){
            translate([raspiHorizontalHoleSep/2-10,0,0]) cube([20,raspiVerticalHoleSep,thickness]);
            
            // mounting screw hole
            translate([raspiHorizontalHoleSep/2,raspiVerticalHoleSep/2,-1]) cylinder(d=extrusionMountingScrewDiam,h=thickness*2,$fn=100);
            translate([raspiHorizontalHoleSep/2,raspiVerticalHoleSep/2,thickness/2]) cylinder(d=extrusionMountingScrewHeadDiam,h=thickness/2+1,$fn=100);   
        }
        
        translate([0,raspiVerticalHoleSep,0]) difference(){
            union(){
                cylinder(d=diam1,h=thickness,$fn=100);
                translate([raspiHorizontalHoleSep,0,0]) cylinder(d=diam1,h=thickness,$fn=100);
                translate([0,-(raspiMountingScrewDiam/2),0]) cube([raspiHorizontalHoleSep,raspiMountingScrewDiam,thickness]);
                
                // standoffs
                translate([raspiHorizontalHoleSep,0,thickness]) cylinder(d=diam1,h=standoffHeight,$fn=100);
                translate([0,0,thickness]) cylinder(d=diam1,h=standoffHeight,$fn=100);
            }
            translate([0,0,-1]) cylinder(d=raspiMountingScrewDiam,h=(thickness+standoffHeight)*2,$fn=100);
            translate([raspiHorizontalHoleSep,0,-1]) cylinder(d=raspiMountingScrewDiam,h=(thickness+standoffHeight)*2,$fn=100);
        }
    }
}

raspiMount();