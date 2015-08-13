//fan raise

//change this to how much you want your fan raised 
raise = 6; //this is in mm

difference(){
	cube([7.5,7.5,raise], center = true);
	cylinder(raise*2, 3, 3, center = true);
	}
