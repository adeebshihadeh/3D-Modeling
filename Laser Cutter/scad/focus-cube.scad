// focus cube

module focusCube(focusHeight = 50, text = "50", widthLength = 20, textDepth = 3 /*use 0 for no text*/){
    difference(){
        cube([widthLength,widthLength,focusHeight]);
        translate([0,0,focusHeight-textDepth]) linear_extrude(height=textDepth) #text(text);
    }
}
focusCube();