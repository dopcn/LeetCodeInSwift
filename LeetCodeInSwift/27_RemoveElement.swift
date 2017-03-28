//
//  27_RemoveElement.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 28/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    guard nums.count > 0 else {
        return 0
    }
    
    var i = 0, j = 0
    while j < nums.count {
        if nums[j] != val {
            nums[i] = nums[j]
            i+=1
        }
        j+=1
    }
    
    return i
}
