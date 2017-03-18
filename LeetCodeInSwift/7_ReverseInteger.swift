//
//  7_ReverseInteger.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 18/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func reverse(_ x: Int) -> Int {
    var array = [Int](), y = x
    while y != 0 {
        array.append(y%10)
        y = y/10
    }
    var result = 0, i = 0
    for item in array {
        result = result*10 + item
        if i == array.count-2 && abs(result) > Int(pow(Double(2), Double(31)))/10  {
            return 0
        }
        i += 1
    }
    return result
}
