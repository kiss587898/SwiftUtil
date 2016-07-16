//
//  DateFormatter.swift
//  Swift-Utils
//
//  Created by 韩劲俊 on 16/7/1.
//  Copyright © 2016年 jj. All rights reserved.
//

import Foundation

public struct JDateFormatter {
    public static let defaultFormatter = "yyyy-MM-dd HH:mm:ss"
    
    public static func dateToString(format:String = defaultFormatter, date:Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    
    public static func stringToDate(format:String = defaultFormatter, string:String) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.date(from: string)
    }
}
