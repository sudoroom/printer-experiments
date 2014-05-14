mountHoleRadius = 2;
handleBarRadius = 12.5;


// top part

difference() {
union() {

cube([17,25,22],true);
translate([0,19,-7])
cube([17,13,8],true);
translate([0,-19,-7])
cube([17,13,8],true);


}

translate([0,-19,-7])
cylinder(23,mountHoleRadius,mountHoleRadius,true);
translate([0,19,-7])
cylinder(23,mountHoleRadius,mountHoleRadius,true);
cylinder(50,3.5,3.5,true);
translate([0,0,-17])
rotate(a=[0,90,0])
cylinder(50,handleBarRadius,handleBarRadius,true);

//coutersunk hole
color([1, 0, 0,1]) 
translate([0,0,-4])
cylinder(5,8,2,true);
}

// bottom part

translate([-25,0,-6]) {
difference() {
union() {

cube([17,51,10],true);



}

translate([0,-19,-7])
cylinder(30,mountHoleRadius,mountHoleRadius,true);
translate([0,19,-7])
cylinder(30,mountHoleRadius,mountHoleRadius,true);

translate([0,0,11])
rotate(a=[0,90,0])
cylinder(25,handleBarRadius,handleBarRadius,true);

}
}

