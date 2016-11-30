//
//  4_medianOfTwoSortedArrays.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 24/11/2016.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

func findKth(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
    if nums1.count > nums2.count {
        return findKth(nums2, nums1, k)
    }
    
    if nums1.count == 0 {
        return nums2[k-1]
    }
    
    if k == 1 {
        return min(nums1[0], nums2[0])
    }
    
    let k1 = min(k/2, nums1.count), k2 = k - k1
    let n1 = nums1[k1-1], n2 = nums2[k2-1]
    if n1 == n2 {
        return n1
    } else if n1 < n2 {
        return findKth(Array(nums1[k1..<nums1.endIndex]), nums2, k-k1)
    } else {
        return findKth(nums1, Array(nums2[k2..<nums2.endIndex]), k-k2)
    }
}

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let c1 = nums1.count, c2 = nums2.count
    if (c1+c2) % 2 == 0 {
        let a = findKth(nums1, nums2, (c1+c2)/2)
        let b = findKth(nums1, nums2, (c1+c2)/2+1)
        return Double(a+b)/2.0
    } else {
        return Double(findKth(nums1, nums2, (c1+c2)/2+1))
    }
}
