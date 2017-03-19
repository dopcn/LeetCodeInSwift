//
//  14_LongestCommonPrefix.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 19/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 0 { return "" }
    if strs.count == 1 { return strs[0] }
    
    func commonPrefixString(_ str1: String, _ str2: String) -> String {
        guard str1.characters.count > 0 && str2.characters.count > 0 else {
            return ""
        }
        
        var x = 0
        let array1 = Array(str1.characters), array2 = Array(str2.characters)
        while x < array1.count && x < array2.count && array1[x] == array2[x] {
            x += 1
        }
        return String(array1[0..<x])
    }
    
    func commonPrefixArray(_ array1: [String], _ array2: [String]) -> String {
        if array1.count == 1 && array2.count == 1 {
            return commonPrefixString(array1[0], array2[0])
        } else if array1.count == 1 && array2.count > 1 {
            let middle = array2.count / 2
            let subArray1 = Array(array2[0..<middle]), subArray2 = Array(array2[middle..<array2.count])
            return commonPrefixString(array1[0], commonPrefixArray(subArray1, subArray2))
        } else if array1.count > 1 && array2.count == 1 {
            let middle = array1.count / 2
            let subArray1 = Array(array1[0..<middle]), subArray2 = Array(array1[middle..<array1.count])
            return commonPrefixString(commonPrefixArray(subArray1, subArray2), array2[0])
        } else {
            let middle1 = array1.count / 2, middle2 = array2.count / 2
            let subArray1 = Array(array1[0..<middle1]), subArray2 = Array(array1[middle1..<array1.count]), subArray3 = Array(array2[0..<middle2]), subArray4 = Array(array2[middle2..<array2.count])
            return commonPrefixString(commonPrefixArray(subArray1, subArray2), commonPrefixArray(subArray3, subArray4))
        }
    }
    
    let middle = strs.count / 2
    let subArray1 = Array(strs[0..<middle]), subArray2 = Array(strs[middle..<strs.count])
    return commonPrefixArray(subArray1, subArray2)
}
