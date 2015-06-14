// Quick Modules

module roundedRect(xWidth, yDepth, zHeight, diam){
    hull(){
        translate([diam/2, diam/2, 0]) cylinder(d=diam, h=zHeight, $fn=90);
        translate([xWidth-(diam/2), diam/2, 0]) cylinder(d=diam, h=zHeight, $fn=90);
        
        translate([diam/2, yDepth-(diam/2), 0]) cylinder(d=diam, h=zHeight, $fn=90);
        translate([xWidth-(diam/2), yDepth-(diam/2), 0]) cylinder(d=diam, h=zHeight, $fn=90);
    }
}

module centeredRoundedRect(xWidth, yDepth, zHeight, diam){
    translate([-xWidth/2, -yDepth/2, -zHeight/2]) roundedRect(xWidth, yDepth, zHeight, diam);
}

translate([25, 25, 0]) roundedRect(10, 10, 10, 1);
centeredRoundedRect(10, 10, 10, 1);