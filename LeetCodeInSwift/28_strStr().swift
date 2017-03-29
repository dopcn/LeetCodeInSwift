//
//  28_strStr().swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 29/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.characters.count == 0 {
        return 0
    }
    
    if let range = haystack.range(of: needle) {
        return haystack.characters.distance(from: haystack.startIndex, to: range.lowerBound)
    } else {
        return -1
    }
}
