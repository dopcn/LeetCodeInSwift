//
//  5_LongestPalindromicSubString.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 05/12/2016.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

func longestPalindrome(_ s: String) -> String {
    guard s.characters.count > 1 else {
        return s
    }
    
//    var table =
    
    func isPalindrome<T: Comparable>(_ array: [T], from: Int, to: Int ) -> Bool {
        var x = from, y = to
        while x < y {
            if array[x] != array[y] {
                return false
            }
            x += 1
            y -= 1
        }
        return true
    }
    
    let array = Array(s.characters)
    var x = 0, y = array.count-1, maxStart = 0, maxEnd = 0
    while x <= y {
        if y-x > maxEnd-maxStart {
            if isPalindrome(array, from: x, to: y) {
                maxStart = x
                maxEnd = y
            }
            y -= 1
        } else {
            x = x+1
            y = array.count-1
        }
    }
    
    return String(array[maxStart...maxEnd])
}
