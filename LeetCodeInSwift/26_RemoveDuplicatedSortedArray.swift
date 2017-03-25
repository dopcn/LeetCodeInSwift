//
//  26_RemoveDuplicatedSortedArray.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 25/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 1 else {
        return nums.count
    }
    
    var i = 0, j = 1
    while j < nums.count {
        if nums[j] != nums[j-1] {
            i+=1
            nums[i] = nums[j]
        }
        j+=1
    }
    
    return i+1
}
