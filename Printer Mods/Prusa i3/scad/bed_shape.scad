// Prusa i3 Bed with binder clips on four sides

translate([100,100,0]) rotate(90) difference(){
    cube([200,200,1], center=true);
    
    translate([90,95.501,-1]) cube([20,9,5], center=true);
    translate([90,-95.501,-1]) cube([20,9,5], center=true);
    translate([-90,95.501,-1]) cube([20,9,5], center=true);
    translate([-90,-95.501,-1]) cube([20,9,5], center=true);
}