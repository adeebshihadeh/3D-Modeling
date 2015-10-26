// kossel bed mount

module bedMount(screwDiam=3.5,thickness=10,length=35){
    width = 20;
    difference(){
        hull(){
            cylinder(d=width,h=thickness,$fn=40);
            translate([0,-width/2,0]) cube([length,width,thickness]);
        }
        #translate([-(width/2-5),0,-0.5]) cylinder(d=screwDiam,h=thickness+1,$fn=25);
        translate([(width/2-5)+16,0,-0.5]) cylinder(d=screwDiam,h=thickness+1,$fn=25);
        
    }
    
}
bedMount();