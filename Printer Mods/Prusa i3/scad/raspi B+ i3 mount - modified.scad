$fn = 50;

// Prusa Frame thickness 6.25
ft = 7.1;
// Pi Circuit Board Thickness 1.5
pt = 1.5;
// offset thickness
ot = 10;
// part thickness
mt = 3;

rotate(a=90, v=[1,0,0]){

difference() {
	cube([mt+ot+ft+pt+2, 6, 7+mt]);
	translate([mt,-1,mt])
		cube([ft, 8, 8]);
	translate([mt+ot+ft, -1, mt])
		cube([pt, 8, 8]);

rotate(v=[0,1,0], a=-45)
translate([0,-1,-1])
	cube([.5,8,2]);

translate([mt+ot+ft+pt+2,0,0])
rotate(v=[0,1,0], a=45)
	cube([1,16,2], true);


translate([mt+ot+ft+pt-1, 3, 7])
rotate(v=[0,1,0], a= 90)
	cylinder(r=1.5, h=4);

}
}