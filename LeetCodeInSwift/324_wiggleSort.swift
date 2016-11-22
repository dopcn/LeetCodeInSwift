//
//  324_wiggleSort.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 06/11/2016.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

//排序之后分成两段，从两段倒叙取值
func wiggleSort1(_ items: inout [Int]) {
    items.sort()
    var head = (items.count+1)/2, tail = items.count
    var tmp = Array(repeating:-1, count:items.count), i = 0;
    while i < items.count {
        if i%2 == 0 {
            head -= 1
            tmp[i] = items[head]
        } else {
            tail -= 1
            tmp[i] = items[tail]
        }
        i += 1
    }
    items = tmp
}

func wiggleSort2(_ items: inout [Int]) {
    items.sort()
    var tmp = Array(repeating:-1, count:items.count), i = 0
    while i < tmp.count {
        tmp[i] = items.popLast()!
        i += 2
        if i%2 == 0 && i >= tmp.count {
            i = 1
        }
    }
    items = tmp
}

//从无序数列中选出中位数
func findMid1(_ items: [Int]) -> Int {
    let sortedItems = items.sorted()
    var mid: Int, count = sortedItems.count
    if count % 2 == 0 {
        mid = (sortedItems[count/2 - 1]+sortedItems[count/2])/2
    } else {
        mid = sortedItems[count/2]
    }
    return mid
}

//func findMid2(_ items: [Int]) -> Int {
//    var flag = items[items.count/2], left = [Int](), right = [Int]()
//    
//}
