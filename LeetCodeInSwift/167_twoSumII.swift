//
//  167_twoSumII.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 22/11/2016.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

func twoSumII(_ numbers: [Int], _ target: Int) -> [Int] {
    var i = 0, j = numbers.count - 1
    while i < j {
        let sum = numbers[i] + numbers[j]
        if sum == target {
            return [i+1, j+1]
        } else if sum < target {
            i += 1
        } else {
            j -= 1
        }
    }
    return [Int]()
}
