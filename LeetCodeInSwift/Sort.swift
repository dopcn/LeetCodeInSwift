//
//  Sort.swift
//  LeetCodeInSwift
//
//  Created by Weizhou Feng on 2018/8/20.
//  Copyright © 2018 dopcn. All rights reserved.
//

import Foundation

func quickSort(_ items: inout [Int], begin: Int, end: Int) {
    func partition(_ items: inout [Int], begin: Int, end: Int) -> Int {
        let random = begin + Int(arc4random_uniform(UInt32(end-begin)))
        (items[begin], items[random]) = (items[random], items[begin])
        let key = items[begin]
        var j = begin
        for i in begin+1...end {
            if items[i] < key {
                j += 1
                if i != j {
                    (items[i], items[j]) = (items[j], items[i])
                }
            }
        }
        (items[begin], items[j]) = (items[j], items[begin])
        return j
    }
    
    if begin < end {
        let middle = partition(&items, begin: begin, end: end)
        quickSort(&items, begin: 0, end: middle-1)
        quickSort(&items, begin: middle+1, end: end)
    }
}
