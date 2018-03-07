//
//  3_longestSubstring.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 23/11/2016.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

//没有重复字符的最大字符串
//双指针遍历没有重复字符的字符串，记录最大值

func lengthOfLongestSubstring(_ s: String) -> Int {
    guard s.count > 1 else {
        return s.count
    }
    
    let chars = Array(s)
    var dict = Dictionary<Character, Int>()
    var head = 0, tail = 0, maxValue = 0
    while head <= tail && tail < chars.count {
        if dict.keys.contains(chars[tail]) {
            head = max(head, dict[chars[tail]]!+1)
        }
        dict[chars[tail]] = tail
        maxValue = max(maxValue, tail-head+1)
        tail += 1
    }
   
    return maxValue
}
