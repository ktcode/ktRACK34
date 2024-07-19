//
// ktRACK34
//
//



gap1 = 0.001;
gap2 = 0.002;
th = 2;

x = 43;
y = 37;
z = 25;

base();
arm();
lock();
part();
translate([0, 0, z+5+th*2+4+18]) part();


module base()
{
difference()
{
    union()
    {
        translate([-7/2-th,  27, 30/2-5]) rotate([0, 90, 0]) hinge_a();
        
        translate([-th, -th, -5]) cube([x+th*2+5, y+th*2, z+5]);
    }
    translate([-th-gap1, 3.5, -10]) cube([x+5+th*2+gap2, 20.5, 10]);
    translate([0, 0, -gap1]) cube([x, y, z+gap2]);
    translate([x/2-5/2-3, y+th-13+gap1, -5-gap1]) cube([10, 13, z+5+gap2]);
    translate([x-12-10, -5, z-4]) cube([22, 10, 10]);
    translate([x+th+gap1,  14, 18]) rotate([0, 90, 0]) cylinder(r=7/2, h=10, center=true, $fn=100);
}
}

module arm()
{
difference()
{
    union()
    {
        translate([-7/2-th,  27, 30/2-5]) rotate([180, -90, -90]) hinge_b();
        translate([-6.5-th, 24+6.5, -5]) cube([6, 14.5, z+5]);
        translate([x/2-5/2-1, 24+6.5+6.5, -5]) cube([6, 3, z+5]);
        translate([-6.5-th, y+th+1, -5]) cube([6.5+x+21.5-th, 5, z+5]);
        translate([x+21.5-th-5-th, 19+6.5+10, -5]) cube([5, 19.5-10, z+5]);
    }
}
}

module lock()
{
difference()
{
    union()
    {
        translate([x+21.5-th-th, 25, -5-20-th]) cube([th, 20, z+5+40+th*2]);
    }
    translate([x+21.5-th-th, 25+20/2, z+(20/2)+th+th/2]) rotate([0, 90, 0]) cylinder(r=4/2, h=30, center=true, $fn=100);
    translate([x+21.5-th-th, 25+20/2, -5-(20/2)-th-th/2]) rotate([0, 90, 0]) cylinder(r=4/2, h=30, center=true, $fn=100);
    
    translate([x+21.5-th-th+th, 25+20/2, z+(20/2)+th+th/2]) rotate([0, 90, 0]) cylinder(r=14/2, h=1, center=true, $fn=100);translate([x+21.5-th-th+th, 25+20/2, -5-(20/2)-th-th/2]) rotate([0, 90, 0]) cylinder(r=14/2, h=1, center=true, $fn=100);
}
difference()
{
    union()
    {
        translate([x+21.5-th-th-10, 25, -5-th-4/2]) cube([10, 20-6.5, z+5+th*2+4]);
        
        translate([x+21.5-th-th-10+th+0.25, 25-gap1, -5-20-th+th+0.25]) cube([10-th-0.25, th, 18-th*2-0.5]);
        translate([x+21.5-th-th-10+th+0.25, 25-gap1, -5-20-th+th+0.25+18-th*2-0.5-th]) cube([10-th-0.25, 20-th-0.25, th]);
        translate([x+21.5-th-th-10+th+0.25, 25-gap1, -5-20-th+th+0.25]) cube([10-th-0.25, 20-th-0.25, th]);
        
        translate([0, 0, z+5+th*2+4+18]){
        translate([x+21.5-th-th-10+th+0.25, 25-gap1, -5-20-th+th+0.25]) cube([10-th-0.25, th, 18-th*2-0.5]);
        translate([x+21.5-th-th-10+th+0.25, 25-gap1, -5-20-th+th+0.25+18-th*2-0.5-th]) cube([10-th-0.25, 20-th-0.25, th]);
        translate([x+21.5-th-th-10+th+0.25, 25-gap1, -5-20-th+th+0.25]) cube([10-th-0.25, 20-th-0.25, th]);
        }
    }
    translate([x+21.5-th-th-10+th, 25+th+gap1+0.5, -5-th+th-4/2]) rotate([0, 0, -3]) cube([10-th, 20-6.5-th, z+5+th*2-th*2+4]);
}
}
module part()
{
difference()
{
    union()
    {
        translate([x+21.5-th-th-10, 25, -5-20-th]) cube([10, 20, 18]);
    }
    translate([x+21.5-th-th-10+th, 25-gap1, -5-20-th+th]) cube([10-th, 20-th, 18-th*2]);
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
    translate([-x/2+8, 0, 0]) rotate([90, 0, 90]) difference()
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



