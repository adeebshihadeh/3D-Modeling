// panel

holeRes = 250;

module panel(xHoleSep = 140, yHoleSep = 165,mountingHoleDiam = 4){
    difference(){
        cube([216,216,1],center=true);
        
        // mounting holes
        translate([xHoleSep/2,yHoleSep/2]) cylinder(d=mountingHoleDiam,h=2,center=true,$fn=holeRes);
        translate([-xHoleSep/2,yHoleSep/2]) cylinder(d=mountingHoleDiam,h=2,center=true,$fn=holeRes);
        translate([xHoleSep/2,-yHoleSep/2]) cylinder(d=mountingHoleDiam,h=2,center=true,$fn=holeRes);
        translate([-xHoleSep/2,-yHoleSep/2]) cylinder(d=mountingHoleDiam,h=2,center=true,$fn=holeRes);
        
        // power switch hole
        translate([50 ,-50])  cube([28.8,22.7,2],center=true);
        
        // test switch
        translate([0,-20,0]) cube([12,12,2],center=true);
        
        // laser switch
        translate([50 ,-20,0]) cube([12,12,2],center=true);
        
        // current indicator
        translate([0,35]) union(){
            cylinder(d=39,h=2,center=true,$fn=100);
            holeSep = 33.6 ;
            translate([holeSep/2,18.5,0]) cylinder(d=3.2,h=2,center=true,$fn=100);
            translate([-(holeSep/2),18.5,0]) cylinder(d=3.2,h=2,center=true,$fn=100);
            
        }
        
        // current regulator
        translate([55,35,0]) cylinder(d=9.6,h=2,center=true,$fn=100);
    }
}

projection() panel();