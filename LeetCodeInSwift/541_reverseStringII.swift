//
//  541_reverseStringII.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 17/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func reverseStr(_ s: String, _ k: Int) -> String {
    guard s.characters.count > 1 && k > 0 else {
        return s
    }
    
    func reverseArray<T>(_ array: inout [T], from: Int, to: Int) {
        var start = from, end = to
        while start < end {
            (array[start], array[end]) = (array[end], array[start])
            start += 1
            end -= 1
        }
    }
    
    let count = s.characters.count
    var array = Array(s.characters), i = 0, j = min(k-1, count-1)
    while i < j {
        reverseArray(&array, from: i, to: j)
        i = i + 2*k
        j = min(count-1, i+k-1)
    }
    
    return String(array)
}
