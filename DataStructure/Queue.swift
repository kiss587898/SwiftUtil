//
//  Queue.swift
//  SwiftUtil
//
//  Created by 韩劲俊 on 16/7/2.
//  Copyright © 2016年 jj. All rights reserved.
//

import Foundation

public struct Queue<Element> {
    public var queue:[Element] = Array()
    
    public var count:Int {
        return queue.count
    }
    
    public func isEmpty() -> Bool {
        return queue.count == 0
    }
    
    public mutating func enqueue(object:Element) {
        queue.append(object)
    }
    
    public mutating func dequeue() -> Element? {
        if !isEmpty() {
            return queue.removeFirst()
        } else {
            return nil
        }
    }
    
    public func seek() -> Element? {
        return queue.first
    }
}
