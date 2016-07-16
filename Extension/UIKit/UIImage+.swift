//
//  UIImage+.swift
//  SwiftUtil
//
//  Created by 韩劲俊 on 16/7/7.
//  Copyright © 2016年 jj. All rights reserved.
//

import UIKit

public extension UIImage {
    
    public var squareImage:UIImage {
        var imageRef:CGImage
        var length:CGFloat
        if self.size.width <= self.size.height {
            length = self.size.width
            imageRef = self.cgImage!.cropping(to: CGRect(x:0, y:(self.size.height-length)/2.0, width:length, height:length))!
        } else {
            length = self.size.height
            imageRef = self.cgImage!.cropping(to: CGRect(x:(self.size.width-length)/2.0, y:0, width:length, height:length))!
        }
        return UIImage(cgImage: imageRef)
    }
    
    public func scaleFitTo(width: CGFloat, needScale:Bool = false) -> UIImage {
        var size = CGSize(width: self.size.width, height: self.size.height)
        if size.width > width {
            size.height = width*size.height/size.width
            size.width = width
        }
        if needScale {
            UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main().scale)
        } else {
            UIGraphicsBeginImageContext(size)
        }
        
        self.draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return scaledImage!
    }
    
    public func scaleFitTo(height: CGFloat, needScale:Bool = false) -> UIImage {
        var size = CGSize(width: self.size.width, height: self.size.height)
        if size.height > height {
            size.width = height*size.width/size.height
            size.height = height
        }
        if needScale {
            UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main().scale)
        } else {
            UIGraphicsBeginImageContext(size)
        }
        self.draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return scaledImage!
    }
}
