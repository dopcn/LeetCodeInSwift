//
//  53_MaximumSubarray.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 26/07/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    guard nums.count > 0 else {
        return 0
    }
    
    func maxSubArray(start: Int, end: Int) -> Int {
        guard start <= end else {
            return Int.min
        }
        
        let middle = (end + start)/2
        let leftMax = maxSubArray(start: start, end: middle-1)
        let rightMax = maxSubArray(start: middle+1, end: end)
        var middleMax = nums[middle]
        var middleLeft = 0, middleRight = 0, i = middle-1, temp = 0
        while i >= start {
            temp += nums[i]
            if temp > middleLeft {
                middleLeft = temp
            }
            i -= 1
        }
        temp = 0
        i = middle+1
        while i <= end {
            temp += nums[i]
            if temp > middleRight {
                middleRight = temp
            }
            i += 1
        }
        middleMax = max(middleLeft+middleMax, middleRight+middleMax, middleLeft+middleMax+middleRight)
        
        return max(leftMax, rightMax, middleMax)
    }
    
    return maxSubArray(start: nums.startIndex, end: nums.endIndex-1)
}
