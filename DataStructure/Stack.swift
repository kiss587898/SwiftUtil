//
//  Stack.swift
//  SwiftUtils
//
//  Created by 韩劲俊 on 16/7/2.
//  Copyright © 2016年 jj. All rights reserved.
//

import Foundation

struct Stack<Element> {
    var stack:[Element] = Array()
    
    var count:Int {
        return stack.count
    }
    
    func isEmpty() -> Bool {
        return stack.count == 0
    }
    
    mutating func push(object: Element) {
        stack.append(object)
    }
    
    func peek() -> Element? {
        return stack.last
    }
    
    mutating func pop() -> Element? {
        if !isEmpty() {
            return stack.removeLast()
        } else {
            return nil
        }
    }
    
}

