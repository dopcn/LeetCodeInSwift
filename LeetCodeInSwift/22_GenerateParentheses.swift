//
//  22_GenerateParentheses.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 24/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func generateParenthesis(_ n: Int) -> [String] {
    if n == 0 { return [] }
    if n == 1 { return ["()"] }
    
    func mergeIn(_ array1: [String], _ array2: [String]) -> [String] {
        var result = [String]()
        for str1 in array1 {
            for str2 in array2 {
                result.append(str1+str2)
                if str1 != str2 {
                    result.append(str2+str1)
                }
            }
        }
        return result
    }
    
    var result = [String]()
    for i in (1...n/2) {
        result.append(contentsOf: mergeIn(generateParenthesis(i), generateParenthesis(n-i)))
    }
    result.append(contentsOf: generateParenthesis(n-1).map{"(\($0))"})
    
    let sorted = result.sorted()
    var filtered = [sorted[0]]
    for i in (1..<sorted.count) {
        if sorted[i] != sorted[i-1] {
            filtered.append(sorted[i])
        }
    }
    
    return filtered
}
