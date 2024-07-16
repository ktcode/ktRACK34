//
// ktRACK34
//
//



gap1 = 0.001;
gap2 = 0.002;
th = 2;



base();
arm();



module base()
{
difference()
{
    union()
    {
        rotate([0, 0, 180]) hinge_b();
        translate([-30/2, -40/2, -7/2-4]) cube([30, 50, 4]);
    }
    translate([-30/4, (-40/2-3)/2, -7/2-4]) cylinder(r=4/2, h=30, center=true, $fn=100);
    translate([+30/4, (+40/2+3)/2, -7/2-4]) cylinder(r=4/2, h=30, center=true, $fn=100);
}
}

module arm()
{
xx=30/3-0.2;
difference()
{
    union()
    {
        rotate([0, 0, 0]) hinge_a();
        translate([-xx/2, -6/2, 7/2]) cube([xx, 6, 6]);
        translate([-xx/2, 6/2, 7/2+6]) cube([xx, 5, 5]);
        translate([-xx/2, -6/2, 7/2+6]) cube([xx, 6, 30]);
    }
}
}



module hinge_a(x=30, h=7)
{
    rotate([180, 0, 0]) hinge_one(x, h);
}
module hinge_b(x=30, h=7)
{
    translate([-x/3-0.1, 0, 0]) hinge_one(x, h);
    translate([x/3+0.1, 0, 0]) hinge_one(x, h);
    translate([-x/2+7, 0, 0]) rotate([90, 0, 90]) difference()
    {
        cylinder(r=2, h=1, center=true, $fn=100 );
        cylinder(r=1, h=1+gap2, center=true, $fn=100 );
    }
}
module hinge_one(x=30, h=7)
{
r = 6;
xx = x/3-0.2;
o = 1.5;
difference()
{
    union()
    {
        rotate([90, 0, 90]) cylinder(r=r/2, h=xx, center=true, $fn=100);
        translate([-xx/2, -r/2, -h/2]) cube([xx, r, h/2]);
    }
    rotate([90, 0, 90]) cylinder(r=o, h=xx+gap1, center=true, $fn=100);
}
}



