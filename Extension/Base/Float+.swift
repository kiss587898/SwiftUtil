//
//  Float+.swift
//  Utils
//
//  Created by 韩劲俊 on 16/6/15.
//  Copyright © 2016年 jj. All rights reserved.
//

import UIKit

extension Float {
    var CGFloatValue:CGFloat { return CGFloat(self)}
    
    var stringValue:String { return String(self)}
    
    func toString(decimal:Int = 0) -> String {
        return String(format: "%.\(decimal)f", self)
    }
}
