//
//  Stack.swift
//  SwiftUtils
//
//  Created by 韩劲俊 on 16/7/2.
//  Copyright © 2016年 jj. All rights reserved.
//

import Foundation

public struct Stack<Element> {
    public var stack:[Element] = Array()
    
    public var count:Int {
        return stack.count
    }
    
    public func isEmpty() -> Bool {
        return stack.count == 0
    }
    
    public mutating func push(object: Element) {
        stack.append(object)
    }
    
    public func peek() -> Element? {
        return stack.last
    }
    
    public mutating func pop() -> Element? {
        if !isEmpty() {
            return stack.removeLast()
        } else {
            return nil
        }
    }
    
}

