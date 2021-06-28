$fn = 50;

//imp();
//mainPcb();
//translate([25,0,0]) uiPcb();
//esc();
//case1();
//case2();
//case3();
//case4();
//assy();
print();

module print()
{
    translate([-30,  2,0]) case1();
    translate([-30,-35,0]) case2();
    translate([  2,  2,0]) case3();
    translate([  2, -1,7]) rotate([180,0,0]) case4();
}

module assy()
{
    case1();
    translate([1.5,1.5,5]) mainPcb();
    translate([0,0,6.1]) case2();
    translate([1.5,3.5,10.5]) esc();
    translate([0,0,12.2]) case3();
    translate([1.5,3.5,16.4]) uiPcb();
    translate([0,0,17.3]) case4();
}

module case1()
{
    difference()
    {
        cube([28,34,7]);
        // hollow out
        translate([1.3,2,1])
            cube([25.4,30.5,7]);
        // clear pcb ch end
        translate([1.3,1.3,4.8])
            cube([22.1,1,1.5]);
        // clear program
        translate([25,14,1])
            cube([5,2.54*6,3]);
        // clear chs
        translate([25,2,1])
            cube([5,2.54*3,3]);
        // give lip
        translate([0.75,0.75,6])
            cube([26.5,32.5,2.5]);
        // clear esp-m2
        translate([5.3,32,5.5])
            cube([12.7,3,2.5]);
    }
    // support pcb at esp-m2 end
    difference()
    {
        translate([0.5,30,0.5])
            cube([26.5,3,5.2]);
        translate([0.4,29.9,5])
            cube([23,0.8,1]);
    }
}

module case2()
{
    difference()
    {
        cube([28,34,7]);
        // hollow out
        translate([1.3,1.3,-0.1])
            cube([25.4,31.4,7.2]);
        // clear switch
        translate([-1,16.2,5.6])
            cube([3,9.1,2]);
        // clear esp-m2
        translate([5.3,32,-0.1])
            cube([12.7,3,0.8]);
        // clear servo wires
        translate([26,5,3.7])
            rotate([0,90,0])
                cylinder(d=2,h=3);
        translate([26,9,3.7])
            rotate([0,90,0])
                cylinder(d=2,h=3);
        translate([26,5,2.7])
            cube([3,4,2]);
        // clear power wires
        translate([26,15.5,3.7])
            rotate([0,90,0])
                cylinder(d=2,h=3);
        translate([26,24,3.7])
            rotate([0,90,0])
                cylinder(d=2,h=3);
        translate([26,15.5,2.7])
            cube([3,8.5,2]);
        // locate into lip
        translate([-0.1,-0.1,-0.1])
            cube([0.95,34.2,1.2]);
        translate([-0.1,-0.1,-0.1])
            cube([28.2,0.95,1.2]);
        translate([28-0.85,-0.1,-0.1])
            cube([0.95,34.2,1.2]);
        translate([-0.1,34-0.85,-0.1])
            cube([28.2,0.95,1.2]);
        // give lip
        translate([0.75,0.75,6])
            cube([26.5,32.5,2.5]);
    }
    // pcb supports
    translate([27.4,3,1.5]) difference()
    {
        rotate([0,-17,0])
            scale([1.2,1,1])
                cylinder(d1=1,d2=3,h=6);
        translate([-4,0.4,2.9])
            cube([4,3,2]);
        translate([-4.5,-2,4.5])
            cube([5,7,2]);
    }
    translate([0.7,3,1.5]) difference()
    {
        rotate([0, 17,0])
            scale([1.2,1,1])
                cylinder(d1=1,d2=3,h=6);
        translate([0,0.4,2.9])
            cube([4,3,2]);
        translate([-1,-2,4.5])
            cube([6,4,2]);
    }
    translate([27.4,26,1.5]) difference()
    {
        rotate([0,-17,0])
            scale([1.2,1,1])
                cylinder(d1=1,d2=3,h=6);
        translate([-4,-3.3,2.9])
            cube([4,3,2]);
        translate([-4,-2,4.5])
            cube([6,4,2]);
    }
}

module case3()
{
    difference()
    {
        cube([28,34,6]);
        // hollow out
        translate([1.3,1.3,-0.1])
            cube([25.4,31.4,6.2]);
        // clear switch
        translate([-1,16.2,-0.1])
            cube([3,9.1,4.2]);
        // locate into lip
        translate([-0.1,-0.1,-0.1])
            cube([0.95,34.2,1.2]);
        translate([-0.1,-0.1,-0.1])
            cube([28.2,0.95,1.2]);
        translate([28-0.85,-0.1,-0.1])
            cube([0.95,34.2,1.2]);
        translate([-0.1,34-0.85,-0.1])
            cube([28.2,0.95,1.2]);
        // give lip
        translate([0.75,0.75,5])
            cube([26.5,32.5,2.5]);
        // clear wires
        translate([26,14.1,5.9])
        {
            rotate([0,90,0])
                cylinder(d=2,h=3);
            translate([0,2,0])
                rotate([0,90,0])
                    cylinder(d=2,h=3);
            translate([0,0,-1])
                cube([3,2,2]);
        }
        translate([26,20.9,5.9])
        {
            rotate([0,90,0])
                cylinder(d=2,h=3);
            translate([0,2,0])
                rotate([0,90,0])
                    cylinder(d=2,h=3);
            translate([0,0,-1])
                cube([3,2,2]);
        }
        translate([26,27.5,5.9])
        {
            rotate([0,90,0])
                cylinder(d=2,h=3);
            translate([0,2,0])
                rotate([0,90,0])
                    cylinder(d=2,h=3);
            translate([0,0,-1])
                cube([3,2,2]);
        }
    }
    // pcb supports
    translate([1,32.7,4.5]) difference()
    {
        rotate([0,90,0])
            cylinder(d=2,h=26);
        translate([-0.1,-1.1,0.5])
            cube([26.2,2.2,1]);
        translate([-0.1,-1.1,-0.4])
            cube([21.7,2.2,1]);
    }
    translate([0.7,3,1.5]) difference()
    {
        rotate([0, 17,0])
            scale([1.2,1,1])
                cylinder(d1=1,d2=3,h=4.3);
        translate([0,0.4,2.6])
            cube([4,3,2]);
        translate([-1,-2,3.5])
            cube([4,3,2]);
    }
    translate([22,0.8,1.5]) difference()
    {
        rotate([-28, 5,0])
            scale([1,1.8,1])
                cylinder(d1=1,d2=3,h=6);
        translate([-3.3,2.6,2.6])
            cube([4,3,4]);
        translate([-2,-1,3.5])
            cube([4,7,4]);
    }
}

module case4()
{
    difference()
    {
        cube([28,34,7]);
        // hollow out
        translate([1.3,1.3,-0.1])
            cube([25.4,31.4,6.1]);
        // locate into lip
        translate([-0.1,-0.1,-0.1])
            cube([0.95,34.2,1.2]);
        translate([-0.1,-0.1,-0.1])
            cube([28.2,0.95,1.2]);
        translate([28-0.85,-0.1,-0.1])
            cube([0.95,34.2,1.2]);
        translate([-0.1,34-0.85,-0.1])
            cube([28.2,0.95,1.2]);
        // clear wires
        translate([26,14.1,0.5])
        {
            rotate([0,90,0])
                cylinder(d=2,h=3);
            translate([0,2,0])
                rotate([0,90,0])
                    cylinder(d=2,h=3);
            translate([0,0,-1])
                cube([3,2,2]);
        }
        translate([26,20.9,0.5])
        {
            rotate([0,90,0])
                cylinder(d=2,h=3);
            translate([0,2,0])
                rotate([0,90,0])
                    cylinder(d=2,h=3);
            translate([0,0,-1])
                cube([3,2,2]);
        }
        translate([26,27.5,0.5])
        {
            rotate([0,90,0])
                cylinder(d=2,h=3);
            translate([0,2,0])
                rotate([0,90,0])
                    cylinder(d=2,h=3);
            translate([0,0,-1])
                cube([3,2,2]);
        }
        // clear LEDs
        translate([5.2,18.3,5])
            cylinder(d=5.5,h=3);
        translate([5.2,28.1,5])
            cylinder(d=5.5,h=3);
        // clear switch
        translate([9.4,6.3,5])
            cube([7,4.1,4.5]);
        // clear USB
        translate([3,5,4])
            cube([3.4,8,4.5]);
        
    }
    // switch housing
    translate([8.4,5.3,5]) difference()
    {
        cube([9,6,2]);
        translate([2,2,-1]) cube([5,2.1,6]);
        translate([1,1,1.1])  cube([7,4.1,4.5]);
    }
}

module esc()
{
    // pcb
    color("red") cube([25,22,1.5]);
    // switch
    translate([-2,13,1.4]) color("black")
        cube([3,8.5,4.1]);
    translate([-3.5,16,3]) color("black")
        cube([3,1.2,1.2]);
    // power fets
    translate([5.5,0.2,1.4])
    {
        translate([0.1,0,0])
            color("silver") cube([6.5,1.2,0.5]);
        translate([0,0.8,0])
            color("black") cube([6.7,6,3]);
    }
    translate([5.5,11,1.4])
    {
        translate([0.1,0,0])
            color("silver") cube([6.5,1.2,0.5]);
        translate([0,0.8,0])
            color("black") cube([6.7,6,3]);
    }
    translate([13.0,0.2,1.4])
    {
        translate([0.1,0,0])
            color("silver") cube([6.5,1.2,0.5]);
        translate([0,0.8,0])
            color("black") cube([6.7,6,3]);
    }
    translate([13.0,11,1.4])
    {
        translate([0.1,0,0])
            color("silver") cube([6.5,1.2,0.5]);
        translate([0,0.8,0])
            color("black") cube([6.7,6,3]);
    }
    // wires
    translate([20.5,1.5,-0.75])
        color("white")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    translate([20.5,3.5,-0.75])
        color("red")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    translate([20.5,5.5,-0.75])
        color("black")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    translate([20.5,12,-0.75])
        color("red")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    translate([20.5,14.5,-0.75])
        color("red")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    translate([20.5,17.5,-0.75])
        color("black")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    translate([20.5,20.5,-0.75])
        color("black")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    // under components
    translate([0.2,1,-1.5]) color("orange")
        cube([19.5,21,1.6]);
    
}

module uiPcb()
{
    // pcb
    color("green") cube([21,29,0.8]);
    // LED
    translate([3.7,14.8,0.7])
    {
        color("lightblue",0.5)
        {
            translate([0,0,3.2])
                cylinder(d=5.8,h=1);
            translate([0,0,3.3])
                cylinder(d=5,h=6.1);
            translate([0,0,9.3])
                sphere(2.5);
        }
        color("silver")
        {
            translate([-0.25,-0.9,0])
                cube([0.5,0.5,3.4]);
            translate([-0.25,-2.2,0])
                cube([0.5,0.5,3.4]);
            translate([-0.25, 0.4,0])
                cube([0.5,0.5,3.4]);
            translate([-0.25, 1.6,0])
                cube([0.5,0.5,3.4]);
        }
    }
    // LED
    translate([3.7,24.6,0.7])
    {
        color("lightblue",0.5)
        {
            translate([0,0,3.2])
                cylinder(d=5.8,h=1);
            translate([0,0,3.3])
                cylinder(d=5,h=6.1);
            translate([0,0,9.3])
                sphere(2.5);
        }
        color("silver")
        {
            translate([-0.25,-0.9,0])
                cube([0.5,0.5,3.4]);
            translate([-0.25,-2.2,0])
                cube([0.5,0.5,3.4]);
            translate([-0.25, 0.4,0])
                cube([0.5,0.5,3.4]);
            translate([-0.25, 1.6,0])
                cube([0.5,0.5,3.4]);
        }
    }
    // 0805 caps
    translate([2.7,18.3,0.7])
        color("white") cube([2.2,1.4,1.4]);
    translate([5.25,3.7,0.7])
        color("white") cube([1.4,2.2,1.4]);
    // switch
    translate([7.3,2.9,0.7])
        color("orange") cube([8.05,3.8,1.4]);
    translate([7.3,2.9,2]) color("silver") difference()
    {
        cube([8.05,3.8,3]);
        translate([1.8,1.1,2])
            cube([4.5,1.7,1.2]);
    }
    translate([12,4,2]) color("black")
        cube([1.7,1.7,6]);
    // relays
    translate([6.8,7,0.7])
        color("white") cube([6.7,10.3,5.7]);
    translate([6.8,17.8,0.7])
        color("white") cube([6.7,10.3,5.7]);
    // usb
    translate([3.7,2.4,0.7]) color("silver")
    {
        cylinder(d=1.5,h=6);
        translate([-0.5,0,0])
            cylinder(d=1.5,h=6);
        translate([0,6.3,0])
        {
            cylinder(d=1.5,h=6);
            translate([-0.5,0,0])
                cylinder(d=1.5,h=6);
        }
        translate([-1.3,0,0])
            cube([2.3,6.3,6]);
        translate([-2,1.2,0])
            cube([2.3,4.2,6]);
    }
    // back 0805
    translate([2.7,18.3,-0.5])
        color("white") cube([2.2,1.4,0.6]);
    translate([8.2,6.5,-1.3])
        color("white") cube([2.2,1.4,1.4]);
    translate([5.8,25,-0.5])
        color("white") cube([1.4,2.2,0.6]);
    translate([14.2,10.8,-0.5])
        color("white") cube([1.4,2.2,0.6]);
    translate([14.2,20.9,-0.5])
        color("white") cube([1.4,2.2,0.6]);
    translate([14.2,17.5,-1.3])
        color("white") cube([1.4,2.2,1.4]);
    // power resistors
    translate([8,24.1,-0.8])
    {
        color("silver") cube([0.7,3.5,0.8]);
        translate([5.8,0,0])
            color("silver") cube([0.7,3.5,0.8]);
        translate([0.1,0.1,0.1])
            color("black") cube([6,3.3,0.8]);
    }
    translate([6.8,14.2,-0.8])
    {
        color("silver") cube([0.7,3.5,0.8]);
        translate([5.8,0,0])
            color("silver") cube([0.7,3.5,0.8]);
        translate([0.1,0.1,0.1])
            color("black") cube([6,3.3,0.8]);
    }
    // wires
    translate([18.2,10.7,0.8+0.75])
        color("red")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    translate([18.2,12.6,0.8+0.75])
        color("black")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    translate([18.2,17.4,0.8+0.75])
        color("black")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    translate([18.2,19.4,0.8+0.75])
        color("red")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    translate([18.2,24,0.8+0.75])
        color("black")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    translate([18.2,26,0.8+0.75])
        color("red")
            rotate([0,90,0])
                cylinder(d=1.5,h=20);
    
    
}

module mainPcb()
{
    // pcb
    color("green") cube([21.7,29,0.8]);
    // ESP
    translate([4,14.9,0.7])
        color("black") cube([12.3,20,1]);
    translate([5,15.2,0.8])
        color("silver") cube([10.1,13,3.1]);
    // lvl conv
    translate([7,9.2,0.7])
        color("black") cube([4.5,5,1.3]);
    // 0805
    translate([1.4,24.7,0.7])
        color("white") cube([1.4,2.2,0.6]);
    translate([1.4,21.5,0.7])
        color("white") cube([1.4,2.2,0.6]);
    translate([1.2,13,0.7])
        color("white") cube([1.4,2.2,0.6]);
    translate([1.2,9.5,0.7])
        color("white") cube([1.4,2.2,1.4]);
    translate([3.4,12,0.7])
        color("white") cube([1.4,2.2,1.4]);
    translate([13.5,12,0.7])
        color("white") cube([1.4,2.2,1.4]);
    translate([18.5,9.3,0.7])
        color("white") cube([1.4,2.2,1.4]);
    translate([17.7,6.7,0.7])
        color("white") cube([2.2,1.4,1.4]);
    // bottom 0805
    translate([5,24,-1.3])
        color("white") cube([1.4,2.2,1.4]);
    // reg
    translate([7.5,19,-2.4])
        color("black") cube([6.5,6.5,2.5]);
    translate([8,20,-0.8])
        color("silver") cube([5.5,6.5,2.5]);
    // program header
    translate([17.9,12.9,-2.54])
        color("red") cube([2.54,6*2.54,2.54]);
    translate([18.8,13.6,-3.4])
        color("silver") cube([6,0.8,0.8]);
    translate([18.8,13.6+2.54,-3.4])
        color("silver") cube([6,0.8,0.8]);
    translate([18.8,13.6+(2.54*2),-3.4])
        color("silver") cube([6,0.8,0.8]);
    translate([18.8,13.6+(2.54*3),-3.4])
        color("silver") cube([6,0.8,0.8]);
    translate([18.8,13.6+(2.54*4),-3.4])
        color("silver") cube([6,0.8,0.8]);
    translate([18.8,13.6+(2.54*5),-3.4])
        color("silver") cube([6,0.8,0.8]);
    // ch headers
    translate([1.8,0.7,-2.54])
        color("red") cube([2.54,3*2.54,2.54]);
    translate([1.8+3.8,0.7,-2.54])
        color("red") cube([2.54,3*2.54,2.54]);
    translate([1.8+(3.8*2),0.7,-2.54])
        color("red") cube([2.54,3*2.54,2.54]);
    translate([1.8+(3.8*3),0.7,-2.54])
        color("red") cube([2.54,3*2.54,2.54]);
    translate([1.8+(3.8*4),0.7,-2.54])
        color("red") cube([2.54,2*2.54,2.54]);
}

module imp()
{
    translate([-105.6,79.3,0])
        import ("RcDev.stl");
}

