//
//  5_LongestPalindromicSubString.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 05/12/2016.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

func longestSubArray<T:Comparable & Hashable>(_ a:[T], _ b:[T]) -> [T] {
    var i = 0, j = 0, start = -1, length = 0, maxStart = 0, maxLength = 0
    while i < a.count {
        while j < b.count {
            if a[i] == b[j] {
                if start < 0 {
                    start = i
                }
                length += 1
                if length > maxLength {
                    maxStart = start
                    maxLength = length
                }
                i += 1
            } else {
                start = -1
                length = 0
            }
            j += 1
        }
        i += 1
        j = 0
    }
    
    return Array(a[maxStart..<maxStart+maxLength])
}

func longestPalindrome(_ s: String) -> String {
    guard s.characters.count > 1 else {
        return s
    }
    
    let fchars = Array(s.characters)
    let bchars = Array(s.characters.reversed())
    
    return String(longestSubArray(fchars, bchars))
}
