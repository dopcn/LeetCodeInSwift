//
//  16_3SumClosest.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 23/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    guard nums.count >= 3 else {
        return abs(target - nums.reduce(0){$0+$1})
    }
    
    let count = nums.count
    var x = 0, sorted = nums.sorted(), closest = sorted[0]+sorted[1]+sorted[2]
    while x < count-2 {
        var y = x+1, z = count-1
        while y < z {
            let value = sorted[x] + sorted[y] + sorted[z]
            if abs(target - value) < abs(target - closest) {
                closest = value
            }
            if value > target { z-=1 } else { y+=1 }
        }
        x+=1
    }
    
    return closest
}
