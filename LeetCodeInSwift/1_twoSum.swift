//
//  1_twoSum.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 21/11/2016.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var i = 0, j = 1
    while nums[i] + nums[j] != target {
        if j < nums.count - 1 {
            j += 1
        } else {
            i += 1
            j = i + 1
        }
        
        if i == nums.count - 1 {
            return [Int]()
        }
    }
    return [i, j]
}

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = Dictionary<Int, Int>(), i = 0
    while i < nums.count {
        if let value = dict[target - nums[i]] {
            return [i, value]
        } else {
            dict[nums[i]] = i
            i += 1
        }
    }
    return [Int]()
}
