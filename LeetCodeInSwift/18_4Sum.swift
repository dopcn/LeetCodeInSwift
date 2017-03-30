//
//  18_4Sum.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 30/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    guard nums.count >= 4 else {
        return []
    }
    
    let sorted = nums.sorted(), count = nums.count
    var i = 0, result = [[Int]]()
    while i < count-3 {
        var j = i+1
        while j < count-2 {
            var x = j+1, y = count-1
            if sorted[i] + sorted[j] + sorted[x] + sorted[x+1] > target { break }
            while x < y {
                if sorted[i] + sorted[j] + sorted[x] + sorted[y] == target {
                    result.append([sorted[i], sorted[j], sorted[x], sorted[y]])
                    repeat { x+=1 } while x<y && sorted[x] == sorted[x-1]
                    repeat { y-=1 } while x<y && sorted[y] == sorted[y+1]
                } else if sorted[i] + sorted[j] + sorted[x] + sorted[y] < target {
                    repeat { x+=1 } while x<y && sorted[x] == sorted[x-1]
                } else {
                    repeat { y-=1 } while x<y && sorted[y] == sorted[y+1]
                }
            }
            repeat { j+=1 } while j<count-2 && sorted[j] == sorted[j-1]
        }
        repeat { i+=1 } while i<count-3 && sorted[i] == sorted[i-1]
    }
    
    return result
}
