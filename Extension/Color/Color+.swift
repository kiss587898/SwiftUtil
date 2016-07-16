//
//  Color+.swift
//  SwiftUtil
//
//  Created by 韩劲俊 on 16/7/2.
//  Copyright © 2016年 jj. All rights reserved.
//

import Foundation

public extension UIColor {
    
    public class func colorFromRGBA(rgbValue: UInt32) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue >> 16) & 0xff)/255.0,
            green: CGFloat((rgbValue >> 8) & 0xff)/255.0,
            blue: CGFloat(rgbValue & 0xff)/255.0,
            alpha: CGFloat((rgbValue >> 24) & 0xff)/255.0)
    }
    
    public class func colorFromRGB(rgbValue: UInt32) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue >> 16) & 0xff)/255.0,
            green: CGFloat((rgbValue >> 8) & 0xff)/255.0,
            blue: CGFloat(rgbValue & 0xff)/255.0,
            alpha: 1)
    }
    
    public class func colorFromRGBA(rgbString: String) -> UIColor {
        let rgbValue = rgbString.hexUInt32Value
        return colorFromRGBA(rgbValue: rgbValue)
    }
    
    public class func colorFromRGB(rgbString: String) -> UIColor {
        let rgbValue = rgbString.hexUInt32Value
        return colorFromRGB(rgbValue: rgbValue)
    }
    
    public class func colorFromRGB(red:Int, green:Int, blue:Int) -> UIColor {
        return UIColor(
            red: red.CGFloatValue/255.0,
            green: green.CGFloatValue/255.0,
            blue: blue.CGFloatValue/255.0,
            alpha: 1)
    }
    
    public class func colorFromRGB(red:Int, green:Int, blue:Int, alpha:Float) -> UIColor {
        return UIColor(
            red: red.CGFloatValue/255.0,
            green: green.CGFloatValue/255.0,
            blue: blue.CGFloatValue/255.0,
            alpha: alpha.CGFloatValue)
    }
}
