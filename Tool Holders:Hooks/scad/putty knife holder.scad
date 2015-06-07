//simple putty knife holder for mounting to a desk or wall

translate([11.5,0,0])
    cube([20,40,3]);

difference(){
    cube([47,5,10]);
    
    translate([2.5,0,6])
        cube([42,6,2]);
    }