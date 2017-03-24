//
//  15_3Sum.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 20/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    guard nums.count >= 3 else {
        return [[Int]]()
    }
    
    var i = 0, result = [[Int]](), count = nums.count, sorted = nums.sorted()
    while i < count - 2 {
        if sorted[i] > 0 { break }
        if i > 0 && sorted[i] == sorted[i-1] {
            i+=1
            continue
        }
        
        var x = i+1, y = count-1
        while x < y {
            if sorted[i] + sorted[x] + sorted[y] == 0 {
                result.append([sorted[i], sorted[x], sorted[y]])
                while x < count-1 && sorted[x] == sorted[x+1] {
                    x+=1
                }
                x+=1
            } else if sorted[i] + sorted[x] + sorted[y] < 0 {
                x+=1
            } else {
                y-=1
            }
        }
        i+=1
    }
    
    return result
}

//Time Limit Exceeded

//func threeSum(_ nums: [Int]) -> [[Int]] {
//    guard nums.count >= 3 else {
//        return [[Int]]()
//    }
//    
//    var i = 0, result = [[Int]](), count = nums.count, sortedNums = nums.sorted()
//    while i < count-2 {
//        if sortedNums[i] > 0 { break }
//        if i > 0 && sortedNums[i] == sortedNums[i-1] {
//            i+=1
//            continue
//        }
//        
//        var hashTable = Set<Int>(), j = i+1
//        while j < count {
//            if hashTable.contains(-(sortedNums[i]+sortedNums[j])) {
//                let array = [sortedNums[i], -(sortedNums[i]+sortedNums[j]), sortedNums[j]]
//                result.append(array)
//                while j < count-1 && sortedNums[j] == sortedNums[j+1] {
//                    j+=1
//                }
//            } else {
//                hashTable.insert(sortedNums[j])
//            }
//            j+=1
//        }
//        i+=1
//    }
//    
//    return result
//}

//Time Limit Exceeded

//func threeSum(_ nums: [Int]) -> [[Int]] {
//    guard nums.count >= 3 else {
//        return [[Int]]()
//    }
//    
//    var x = 0, y = x+1, z = y+1,
//    xLast = nums.count - 3, yLast = nums.count - 2, zLast = nums.count - 1,
//    result = [[Int]](), nums = nums.sorted()
//    while x <= xLast {
//        while y <= yLast {
//            while z <= zLast {
//                if nums[x] + nums[y] + nums[z] == 0 {
//                    let array = [nums[x], nums[y], nums[z]]
//                    if !result.contains(where: { (theArray) -> Bool in
//                        theArray == array
//                    }) {
//                        result.append(array)
//                    }
//                }
//                z+=1
//            }
//            y+=1
//            z=y+1
//        }
//        x+=1
//        y=x+1
//        z=y+1
//    }
//    
//    return result
//}
