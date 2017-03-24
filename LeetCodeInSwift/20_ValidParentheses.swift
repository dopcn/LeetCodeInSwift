//
//  20_ValidParentheses.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 24/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func isValid(_ s: String) -> Bool {
    guard s.characters.count >= 2 else {
        return false
    }
    
    func match(_ left: Character, _ right: Character) -> Bool {
        if (left == Character("(") && right == Character(")")) ||
            (left == Character("[") && right == Character("]")) ||
            (left == Character("{") && right == Character("}")) {
            return true
        } else {
            return false
        }
    }
    
    let array = Array(s.characters)
    var stack = [Character]()
    array.forEach { (char) in
        if let last = stack.last {
            if match(last, char) {
                _ = stack.popLast()
            } else {
                stack.append(char)
            }
        } else {
            stack.append(char)
        }
    }
    
    return stack.count == 0
}
