//
//  DateFormatter.swift
//  Swift-Utils
//
//  Created by 韩劲俊 on 16/7/1.
//  Copyright © 2016年 jj. All rights reserved.
//

import Foundation

struct JDateFormatter {
    static let defaultFormatter = "yyyy-MM-dd HH:mm:ss"
    
    static func dateToString(format:String = defaultFormatter, date:Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    
    static func stringToDate(format:String = defaultFormatter, string:String) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.date(from: string)
    }
}
