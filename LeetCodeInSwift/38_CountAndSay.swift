//
//  38_CountAndSay.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 06/07/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func countAndSay(_ n: Int) -> String {
    guard n > 0 else {
        return "1"
    }
    
    func iterate(_ str: String) -> String {
        let chars = Array(str)
        var count = 0, result = "", tmp = chars.first!
        for (index, char) in chars.enumerated() {
            if char != tmp {
                result.append("\(count)\(tmp)")
                count = 1
                tmp = char
            } else {
                count += 1
            }
            
            if index == chars.count-1 {
                result.append("\(count)\(tmp)")
            }
        }
        return result
    }
    
    var result = "1", i = 0
    while i < n-1 {
        result = iterate(result)
        i += 1
    }
    
    return result
}
