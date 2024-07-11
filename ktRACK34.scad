//
// ktRack34
//
//


gap1 = 0.001;
gap2 = 0.002;
th = 2;


translate([0, 0, 0]) bar();
translate([0, 15, 0]) bar();
translate([0, 30, 0]) bar();
translate([0, 45, 0]) bar();
translate([0, 60, 0]) bar();
translate([0, 75, 0]) bar();




translate([115, 0, 0]) pin();
translate([130, 0, 0]) pin();
translate([145, 0, 0]) pin();
translate([115, 15, 0]) pin();
translate([130, 15, 0]) pin();
translate([145, 15, 0]) pin();
translate([115, 30, 0]) pin();
translate([130, 30, 0]) pin();
translate([145, 30, 0]) pin();



module bar()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) cylinder(r=10/2, h=10, $fn=100);
        translate([0, -10/2, 0]) cube([100, 10, 10]);
        translate([100, 0, 0]) cylinder(r=10/2, h=10, $fn=100);
    }
    
    translate([0, 0, -gap1]) cylinder(r=8/2, h=10+gap2, $fn=100);
    translate([10, 0, -gap1]) cylinder(r=8/2, h=10+gap2, $fn=100);
    translate([20, 0, -gap1]) cylinder(r=8/2, h=10+gap2, $fn=100);
    translate([30, 0, -gap1]) cylinder(r=8/2, h=10+gap2, $fn=100);
    translate([40, 0, -gap1]) cylinder(r=8/2, h=10+gap2, $fn=100);
    translate([50, 0, -gap1]) cylinder(r=8/2, h=10+gap2, $fn=100);
    translate([60, 0, -gap1]) cylinder(r=8/2, h=10+gap2, $fn=100);
    translate([70, 0, -gap1]) cylinder(r=8/2, h=10+gap2, $fn=100);
    translate([80, 0, -gap1]) cylinder(r=8/2, h=10+gap2, $fn=100);
    translate([90, 0, -gap1]) cylinder(r=8/2, h=10+gap2, $fn=100);
    translate([100, 0, -gap1]) cylinder(r=8/2, h=10+gap2, $fn=100);
}
}


module pin()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) cylinder(r=8/2-0.2, h=22, $fn=100);
        translate([0, 0, 0]) cylinder(r=10/2, h=2, $fn=100);
    }
}
}