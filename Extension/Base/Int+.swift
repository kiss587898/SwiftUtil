//
//  Int+.swift
//  Utils
//
//  Created by 韩劲俊 on 16/6/15.
//  Copyright © 2016年 jj. All rights reserved.
//

import UIKit

public extension Int {
    
    public var stringValue:String { return String(self) }
    
    public var CGFloatValue:CGFloat { return CGFloat(self)}
    
        /// 非0为true
    public var boolValue:Bool { return self == 0 ? false: true}
    
    public func printSelf() -> Int {
        print(self)
        return self
    }

}
