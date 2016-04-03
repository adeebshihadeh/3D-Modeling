// air tripper spring block

use <MCAD/boxes.scad>;

module springBlock(screwDiam = 3.1, thickness=1.5){
    difference(){
        roundedBox([25,10,thickness],2,true,$fn=20);
        
        holeSep = 12;
        for(i=[-1,1]){
            translate([holeSep/2*i,0,0]) cylinder(d=screwDiam, h=thickness+1,center=true,$fa=0.05,$fs=0.05);
        }
    }
}
springBlock();