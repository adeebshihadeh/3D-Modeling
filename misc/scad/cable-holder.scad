

module cableHolder(cableOD=2){
    union(){
        
        
        difference(){
            fudgeFactor = 1.4;
            cylinder(d=cableOD*fudgeFactor,h=5,$fn=30);
            cylinder(d=cableOD,h=12,$fn=30,center=true);
            #translate([1.5,0,-0.5]) cylinder(d=cableOD,h=6,$fn=30);
        }
    }
    
    
    
    
}
cableHolder();