//
//  Float+.swift
//  Utils
//
//  Created by 韩劲俊 on 16/6/15.
//  Copyright © 2016年 jj. All rights reserved.
//

import UIKit

public extension Float {
    public var CGFloatValue:CGFloat { return CGFloat(self)}
    
    public var stringValue:String { return String(self)}
    
    public func toString(decimal:Int = 0) -> String {
        return String(format: "%.\(decimal)f", self)
    }
}
