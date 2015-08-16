// MTW MiniMax mount for 12V to 5V converter
// used to power raspi running octoprint from printer's psu

use <MCAD/boxes.scad>;

// parameters
extrusionMountingScrewDiam = 5.8;
extrusionMountingScrewHeadDiam = 10.5; // used for screw head indent
screwHeadIndentHeight = 3.2; // must be less than the thickness. only used if 'screwHeadIndent' is true
converterMountingScrewDiam = 3.1;

thickness = 5;


length = 25;
holeSep = 16.5;
width = holeSep*1.35;

module voltageConverterMount(standoffHeight = 3.5 /*0 for none*/, screwHeadIndent = true){
    difference(){
        union(){
            roundedBox([width,length,thickness],1.5,true,$fn=100);
            
            // standoffs
            translate([holeSep/2,length*0.375,thickness/2]) cylinder(d=converterMountingScrewDiam*1.55,h=standoffHeight,$fn=100);
            translate([-(holeSep/2),length*0.375,thickness/2]) cylinder(d=converterMountingScrewDiam*1.55,h=standoffHeight,$fn=100);
        }
        
        // extrusion mounting screw hole
        translate([0,-(length/2-(extrusionMountingScrewHeadDiam*1.55)/2),0]) union(){
            cylinder(d=extrusionMountingScrewDiam,h=thickness*1.01,center=true,$fn=100);
            if(screwHeadIndent){
                translate([0,0,(thickness-screwHeadIndentHeight)/2]) cylinder(d=extrusionMountingScrewHeadDiam,h=screwHeadIndentHeight*1.01,center=true,$fn=100);
            }   
        }
        
        // voltage converter mounting holes
        translate([holeSep/2,length*0.375,thickness/2]) cylinder(d=converterMountingScrewDiam,h=thickness+standoffHeight+2,center=true,$fn=100);
        translate([-(holeSep/2),length*0.375,thickness/2]) cylinder(d=converterMountingScrewDiam,h=thickness+standoffHeight+2,center=true,$fn=100);
    }
    
}

voltageConverterMount();