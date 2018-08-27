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

func quickSort2(_ items: inout [Int], begin: Int, end: Int) {
    guard items.count > 1 && begin < end else {
        return
    }

    func partition(_ items: inout [Int], begin: Int, end: Int) -> Int {
        let random = begin + Int(arc4random_uniform(UInt32(end-begin)))
        (items[begin], items[random]) = (items[random], items[begin])
        let key = items[begin]
        var i = begin, j = end + 1
        while true {
            repeat {
                i += 1
                if i == end {
                    break
                }
            } while items[i] < key

            repeat {
                j -= 1
                if j == begin {
                    break
                }
            } while items[j] > key
            
            if i >= j {
                break
            }
            
            (items[i], items[j]) = (items[j], items[i])
        }
        (items[begin], items[j]) = (items[j], items[begin])

        return j
    }
    
    if begin < end {
        let mid = partition(&items, begin: begin, end: end)
        quickSort2(&items, begin: 0, end: mid-1)
        quickSort2(&items, begin: mid+1, end: end)
    }
    
}
