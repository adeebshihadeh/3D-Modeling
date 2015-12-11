// filament spool guide 

module spoolGuide(depth=55, diameter=52, rodDiam=8.5, bearingOD=22.2, bearingThickness=7.2){ // these settings are for atomic filament spools, an M8 rod, and 608 bearings
    difference(){
        cylinder(d=diameter,h=depth,center=true,$fn=45);
        
        cylinder(d=rodDiam,h=depth+1,center=true,$fn=30);
        
        for(z=[-1,1]){
            
            #translate([0,0,(depth/2-bearingThickness/2)*z]) cylinder(d=bearingOD,h=bearingThickness,center=true,$fn=40);
        }
    }   
}
spoolGuide();