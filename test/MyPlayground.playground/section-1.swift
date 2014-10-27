// Playground - noun: a place where people can play

import UIKit

var value:CGFloat=9.1*0.5
//总的5颗星
/*

先除以
*/


value=value-CGFloat(Int(value))




value=value-0.5;
if ( value > 0.2)
{
    print("进1")
}else if (value < -0.2)
{
    print("舍去")
}else
{
    print("0.5")
}
