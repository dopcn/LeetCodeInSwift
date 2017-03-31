//
//  35_searchInsert.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 31/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    guard nums.count > 0 else {
        return 0
    }
    
    var i = 0
    while i < nums.count {
        if nums[i] >= target {
            return i
        }
        i+=1
    }
    
    return i
}
