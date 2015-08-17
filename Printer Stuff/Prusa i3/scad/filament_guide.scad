// Prusa i3 filament guide

clipHeight = 20;
filamentHoleDiam = 4.3;

module filamentGuide(frameThickness = 7.2){
    width = frameThickness*2.2;
    
    union(){
        difference(){
            cube([width,width,clipHeight],center=true);
            translate([0,0,-5]) cube([width*1.01,frameThickness,clipHeight],center=true);
        }
        translate([0,0,clipHeight]) rotate([90,0,90]) difference(){
            cylinder(d=filamentHoleDiam*1.65,h=width,$fn=100,center=true);
            cylinder(d=filamentHoleDiam,sh=width*1.02,$fn=100,center=true);
        }
        translate([0,0,clipHeight*0.65]) cube([width,filamentHoleDiam,clipHeight/2-(filamentHoleDiam*1.65)*0.25],center=true);
    }
}

filamentGuide();