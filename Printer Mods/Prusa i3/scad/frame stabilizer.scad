//Prusa i3 Frame Stabilzer

//cube([25, 30, 20], center = true);

difference(){
	cube([25, 30, 20], center = true);
	
	translate([0,0,10])
		cube([500, 7.1, 30], center = true);
}