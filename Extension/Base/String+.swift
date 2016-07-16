//
//  String+.swift
//  Utils
//
//  Created by 韩劲俊 on 16/6/15.
//  Copyright © 2016年 jj. All rights reserved.
//

import Foundation

public extension String {
    /**
     打印字符串
     */
    @discardableResult
    public func printSelf() -> String {
        print(self)
        return self
    }
    
    // MARK: 类型转换
    public var intValue:Int {
        if let value = Int(self) {
            return value
        } else {
            return 0
        }
    }
    
    public var hexUInt32Value:UInt32 {
        let scanner = Scanner(string: self)
        var value:UInt32 = 0
        if scanner.scanHexInt32(&value) {
            return value
        } else {
            return 0
        }
    }
    
    public var hexUInt64Value:UInt64 {
        let scanner = Scanner(string: self)
        var value:UInt64 = 0
        if scanner.scanHexInt64(&value) {
            return value
        } else {
            return 0
        }
    }
    
    public var doubleValue:Double {
        if let value = Double(self) {
            return value
        } else {
            return 0.0
        }
    }
    
    public var floatValue:Float {
        return self.doubleValue.floatValue
    }
    
    // MARK: Base64加解密
    /// base64加密
    public var base64:String {
        let plainData = self.data(using: String.Encoding.utf8)!
        let base64Data = plainData.base64EncodedData(options: .lineLength64Characters)
        return String(data: base64Data, encoding: String.Encoding.utf8)!
    }
    /// base64解密
    public var enBase64:String {
        let decodedData = Data(base64Encoded: self, options: .lineLength64Characters)
        if decodedData == nil {
            return ""
        }
        let result = String(data: decodedData!, encoding: String.Encoding.utf8)!
        return result
    }
    
    // MARK: 分割字符串
    /// 将“a&&b&&c”分割成数组
    public var splitArray:[String] {
        return self.split(separatedBy: "&&")
    }
    /// 分割字符串成数组
    public func split(separatedBy char:String) -> [String] {
        if self.contains(char) {
            return self.components(separatedBy: char)
        } else {
            return[self]
        }
    }
    
    // MARK: 格式化日期
    /// 默认格式化日期(yyyy-MM-dd HH:mm:ss)，不符合格式则返回nil
    public var defaultDate:Date? {
        return JDateFormatter.stringToDate(string: self)
    }
    /// 默认格式化日期(yyyy-MM-dd HH:mm:ss)，不符合格式则返回当前时间
    public var defaultDateValue:Date {
        return JDateFormatter.stringToDate(string: self) ?? Date()
    }
    /// 格式化日期，默认(yyyy-MM-dd HH:mm:ss)，可自定义，返回日期
    public func toDate(format:String = JDateFormatter.defaultFormatter) -> Date {
        return JDateFormatter.stringToDate(format: format, string: self) ?? Date()
    }
}
