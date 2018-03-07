//
//  58_LengthOfLastWord.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 17/08/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func lengthOfLastWord(_ s: String) -> Int {
    guard s.count > 0 else {
        return 0
    }
    
    let word = s.components(separatedBy: " ").filter({ (s) -> Bool in
        return s != " " && s.count > 0
    }).last
    
    if let theWord = word {
        return theWord.count
    }
    
    return 0
}
