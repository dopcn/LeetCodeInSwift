//
//  9_palindromeNumber.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 18/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    guard x >= 0 else {
        return false
    }
    
    var div = 1, y = x/10
    while y != 0 {
        div *= 10
        y /= 10
    }
    
    y = x
    while y != 0 {
        let last = y % 10, first = y / div
        if last != first {
            return false
        }
        y %= div
        div /= 100
        y /= 10
    }
    return true
}
