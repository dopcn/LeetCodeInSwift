//
//  67_AddBinary.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 22/08/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func addBinary(_ a: String, _ b: String) -> String {
    guard a.characters.count > 0 && b.characters.count > 0 else {
        if a.characters.count > 0 {
            return a
        } else {
            return b
        }
    }
    
    var long = [Int](), short = [Int]()
    if a.characters.count >= b.characters.count {
        long = a.characters.flatMap{Int(String($0))}
        short = b.characters.flatMap{Int(String($0))}
    } else {
        long = b.characters.flatMap{Int(String($0))}
        short = a.characters.flatMap{Int(String($0))}
    }
    
    var lIndex = long.count-1, sIndex = short.count-1
    var needForward = false
    while sIndex >= 0 {
        if needForward {
            needForward = long[lIndex]+short[sIndex]+1 >= 2
            long[lIndex] = (long[lIndex] + short[sIndex] + 1)%2
        } else {
            needForward = long[lIndex]+short[sIndex] >= 2
            long[lIndex] = (long[lIndex] + short[sIndex])%2
        }
        lIndex -= 1
        sIndex -= 1
    }
    while needForward && lIndex >= 0 {
        needForward = long[lIndex]+1 >= 2
        long[lIndex] = (long[lIndex]+1)%2
        lIndex -= 1
    }
    if needForward {
        long.insert(1,at: 0)
    }
    
    return long.map{String($0)}.joined()
}
