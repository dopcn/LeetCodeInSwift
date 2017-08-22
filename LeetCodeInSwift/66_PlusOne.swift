//
//  66_PlusOne.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 17/08/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    var result = digits
    var index = digits.endIndex-1
    var needPlus = true
    while index >= 0 {
        if needPlus {
            needPlus = (result[index]+1)/10 > 0
            result[index] = (result[index]+1)%10
        } else {
            break
        }
        index -= 1
    }
    if needPlus {
        result.insert(1, at: 0)
    }
    
    return result
}
