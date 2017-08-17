//
//  66_PlusOne.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 17/08/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

// 整体循环思路不对
func plusOne(_ digits: [Int]) -> [Int] {
    var result = digits
    var index = digits.endIndex-1
    if ((result[index] + 1)/10 > 0) {
        var needPlus = true
        while index >= 0 {
            if needPlus {
                result[index] = (result[index]+1)%10
                index -= 1
            } else {
                
            }
        }
    } else {
        result[index] = result[index] + 1
    }
    return result
}
