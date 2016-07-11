//
//  Date+.swift
//  Swift-Utils
//
//  Created by 韩劲俊 on 16/7/1.
//  Copyright © 2016年 jj. All rights reserved.
//

import Foundation

extension Date {
    
    var defaultString:String {
        return JDateFormatter.dateToString(date: self)
    }
    
    func toString(format:String = JDateFormatter.defaultFormatter) -> String {
        return JDateFormatter.dateToString(format: format, date: self)
    }
}
