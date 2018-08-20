//
//  main.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 06/11/2016.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

//print(findMedianSortedArrays([1], [2,3,4,5,6]))
//print(longestPalindrome("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabcaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"))

//print(longestPalindrome("aaaabaaa"))

//print(longestCommonPrefix(["abc", "acc", "add"]))

//print(threeSum([-1,0,1,2,-1,-4]))
//print(threeSum([0,0,0,0]))

//print(generateParenthesis(4))
//print(fourSum([-3,-2,-1,0,0,1,2,3], 0))
//print(combinationSum([2,3,6,7], 7))

//print(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))

//print(lengthOfLastWord("a "))

//print(plusOne([9]))

//print(addBinary("110010","10111"))

//var node: ListNode?
//var head = ListNode(6), tmp = head
//let nums = [3,4,9,0,2,1,6,2,8,1,2,6,3,5,0,7,8,1]
//for num in nums {
//    let node = ListNode(num)
//    tmp.next = node
//    tmp = tmp.next!
//}

//node = removeNthFromEnd(head, 1)!
//head.printList()
//reverseLinkList2(head).printList()


let nums = [3,4,9,0,2,1,6,2,8,1,2,6,3,5,0,7,8,1]
let head = DoublyListNode(1)
var last = head
for num in nums {
    let tmp = DoublyListNode(num)
    last.next = tmp
    tmp.previous = last
    
    if last.next != nil {
        last = last.next!
    }
}

head.printList()
deleteInDoublyList(head: head, value: 9)?.printList()

