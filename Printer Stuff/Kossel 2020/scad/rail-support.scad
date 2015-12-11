//kossel 2020 linear rail bottom support piece

module railSupport(thickness = 5, screwDiam = 4, railWidth = 13, width = 22){
    difference(){
        cube([width,12.5,thickness]);
        
        // hole for rail to rest on
        translate([width/2-railWidth/2,9.2,-0.5]) cube([railWidth,10,thickness+1]);
        
        // screw hole
        translate([width/2,4.5,-0.5]) cylinder(d=screwDiam,h=thickness+1,$fn=40);
        
        translate([0,-5,-0.5]) rotate(45) cube([7,15,thickness+1]);
        mirror([0,1,0]) translate([width,-5,-0.5]) rotate(45) cube([7,15,thickness+1]);
    }
}
railSupport();