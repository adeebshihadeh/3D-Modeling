hole = 1;

totalWidth = 20;
width = 25;
height = 10;
thickness = 5;

cube([width, totalWidth, thickness], center = true);

translate([height, 0, height+(height/10)])
	cube([thickness, totalWidth, height*2.55], center = true);

translate([thickness,0, width])
	cube([15, totalWidth, 4], center  = true);