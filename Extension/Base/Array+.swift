//
//  Array+.swift
//  Utils
//
//  Created by 韩劲俊 on 16/6/15.
//  Copyright © 2016年 jj. All rights reserved.
//

import Foundation

extension Array {
    func combinedString(separator char:String) -> String {
        var string = ""
        if self.count != 0 {
            if self.count == 1 {
                return String(self.first!)
            }
            for str in self {
                if str as! String != "" {
                    string += "\(str)" + char
                }
            }
            return string.substring(to: string.index(string.endIndex, offsetBy: -char.characters.count))
        }
        return string
    }
    
    var combineString:String {
        return combinedString(separator: "&&")
    }
}
