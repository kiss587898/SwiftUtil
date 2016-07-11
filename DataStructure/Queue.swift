//
//  Queue.swift
//  SwiftUtil
//
//  Created by 韩劲俊 on 16/7/2.
//  Copyright © 2016年 jj. All rights reserved.
//

import Foundation

struct Queue<Element> {
    var queue:[Element] = Array()
    
    var count:Int {
        return queue.count
    }
    
    func isEmpty() -> Bool {
        return queue.count == 0
    }
    
    mutating func enqueue(object:Element) {
        queue.append(object)
    }
    
    mutating func dequeue() -> Element? {
        if !isEmpty() {
            return queue.removeFirst()
        } else {
            return nil
        }
    }
    
    func seek() -> Element? {
        return queue.first
    }
}
