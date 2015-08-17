// Raspberry Pi Mount for Maker's Tool Works MiniMax
// designed for the raspi b+

include <MCAD/boxes.scad>;

// parameters
thickness = 5;
standoffHeight = 5; // set to 0 for no standoff
extrusionMountScrewDiam = 5.9; // screw outer diameter
extrusionMountScrewHeadDiam = 10.5; // screw head outer diameter - only used if you set screwIndents to true
screwIndentDepth = 3; // depth the indent for the extrusion mounting screw head indent should be (must be less than thickness) - only used if screwIndents is true
raspiMountingScrewDiam = 4; // diameter of screws used to mount the raspi
extrusionMountingScrewHoleSep = 40; // hole separation between extrusion mounting holes

raspiHorizontalHoleSep = 48.5;
raspiVerticalHoleSep = 58;

module raspiMount(screwIndents = true, extraCompatibility = false/*only used if centerMount is true*/, centerMount = false /*makes a square mount with the holes in the center. saves space but harder to put on printer*/){
    difference(){
        union(){
            if(centerMount){
                if(extraCompatibility){ // may help with compability in mounting other boards or different rpi models
                    roundedBox([60,65,thickness],5,true,$fn=100);
                }else{
                    roundedBox([raspiHorizontalHoleSep*1.23,raspiVerticalHoleSep*1.12,thickness],5,true,$fn=100); 
                }
            }else {
                hull(){
                    roundedBox([raspiHorizontalHoleSep*1.23,raspiVerticalHoleSep*1.12,thickness],5,true,$fn=100);
                    if(screwIndents){
                        translate([raspiHorizontalHoleSep/2+extrusionMountScrewHeadDiam,0,0]) cylinder(d=extrusionMountScrewHeadDiam*1.2,h=thickness,center=true,$fn=100);
                        translate([-(raspiHorizontalHoleSep/2+extrusionMountScrewHeadDiam),0,0]) cylinder(d=extrusionMountScrewHeadDiam*1.2,h=thickness,center=true,$fn=100);
                    }else {
                        translate([raspiHorizontalHoleSep/2+extrusionMountScrewDiam,0,0]) cylinder(d=extrusionMountScrewDiam*1.2,h=thickness,center=true,$fn=100);
                        translate([-(raspiHorizontalHoleSep/2+extrusionMountScrewDiam),0,0]) cylinder(d=extrusionMountScrewDiam*1.2,h=thickness,center=true,$fn=100);
                    }
                     
                }
            }
            
            translate([raspiHorizontalHoleSep/2,raspiVerticalHoleSep/2,thickness/2]) cylinder(d=raspiMountingScrewDiam*1.7,h=standoffHeight,$fn=100);
            translate([raspiHorizontalHoleSep/2,-(raspiVerticalHoleSep/2),thickness/2]) cylinder(d=raspiMountingScrewDiam*1.7,h=standoffHeight,$fn=100);
            translate([-(raspiHorizontalHoleSep/2),raspiVerticalHoleSep/2,thickness/2]) cylinder(d=raspiMountingScrewDiam*1.7,h=standoffHeight,$fn=100);
            translate([-(raspiHorizontalHoleSep/2),-(raspiVerticalHoleSep/2),thickness/2]) cylinder(d=raspiMountingScrewDiam*1.7,h=standoffHeight,$fn=100);
        }
        
        // extrusion mounting holes
        if(centerMount){
            translate([20,0,0]) cylinder(d=extrusionMountScrewDiam,h=thickness*1.01,center=true,$fn=100);
            translate([-20,0,0]) cylinder(d=extrusionMountScrewDiam,h=thickness*1.01,center=true,$fn=100);
            
            // extrusion mounting screw head indents
            if(screwIndents){
                translate([20,0,screwIndentDepth/2]) cylinder(d=extrusionMountScrewHeadDiam,h=screwIndentDepth,center=true,$fn=100);
                translate([-20,0,screwIndentDepth/2]) cylinder(d=extrusionMountScrewHeadDiam,h=screwIndentDepth,center=true,$fn=100);
            }   
        }else {
            if(screwIndents){
                translate([raspiHorizontalHoleSep/2+extrusionMountScrewHeadDiam,0,0]) cylinder(d=extrusionMountScrewDiam,h=thickness*1.01,center=true,$fn=100);
                translate([-(raspiHorizontalHoleSep/2+extrusionMountScrewHeadDiam),0,0]) cylinder(d=extrusionMountScrewDiam,h=thickness*1.01,center=true,$fn=100);
            
                // screw head indents
                translate([raspiHorizontalHoleSep/2+extrusionMountScrewHeadDiam,0,screwIndentDepth/2]) cylinder(d=extrusionMountScrewHeadDiam,h=screwIndentDepth,center=true,$fn=100);
                translate([-(raspiHorizontalHoleSep/2+extrusionMountScrewHeadDiam),0,screwIndentDepth/2]) cylinder(d=extrusionMountScrewHeadDiam,h=screwIndentDepth,center=true,$fn=100);
            }else {
                translate([raspiHorizontalHoleSep/2+extrusionMountScrewDiam,0,0]) cylinder(d=extrusionMountScrewDiam,h=thickness*1.01,center=true,$fn=100);
                translate([-(raspiHorizontalHoleSep/2+extrusionMountScrewDiam),0,0]) cylinder(d=extrusionMountScrewDiam,h=thickness*1.01,center=true,$fn=100);
            }
        }
        
        // raspi mounting screw holes
        translate([raspiHorizontalHoleSep/2,raspiVerticalHoleSep/2,thickness/2]) cylinder(d=raspiMountingScrewDiam,h=(thickness+standoffHeight)*1.01,$fn=100,center=true);
        translate([raspiHorizontalHoleSep/2,-(raspiVerticalHoleSep/2),thickness/2]) cylinder(d=raspiMountingScrewDiam,h=(thickness+standoffHeight)*1.01,$fn=100,center=true);
        translate([-(raspiHorizontalHoleSep/2),raspiVerticalHoleSep/2,thickness/2]) cylinder(d=raspiMountingScrewDiam,h=(thickness+standoffHeight)*1.01,$fn=100,center=true);
        translate([-(raspiHorizontalHoleSep/2),-(raspiVerticalHoleSep/2),thickness/2]) cylinder(d=raspiMountingScrewDiam,h=(thickness+standoffHeight)*1.01,$fn=100,center=true);
    }
}

raspiMount();