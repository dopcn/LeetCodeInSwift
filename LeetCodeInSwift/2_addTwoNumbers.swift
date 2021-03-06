//
//  2_addTwoNumbers.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 22/11/2016.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil {
        return l2
    }
    
    if l2 == nil {
        return l1
    }
    
    var n1 = l1, n2 = l2, over = 0, head = ListNode(0)
    head.next = n1
    
    while n1 != nil || n2 != nil {
        if let tmp = n1 {
            if let tmp2 = n2 {
                tmp.val += tmp2.val
            }
        } else {
            n1 = ListNode(n2!.val)
            head.next = n1
        }
        n1!.val += over
        
        over = n1!.val / 10
        n1!.val = n1!.val % 10
        
        head = head.next!
        n1 = n1?.next
        n2 = n2?.next
    }
    
    if over == 1 {
        head.next = ListNode(1)
    }
    
    return l1
}

func addTwoNumbers2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil {
        return l2
    }
    if l2 == nil {
        return l1
    }

    var n1 = l1, n2 = l2, over = 0
    let head = ListNode(0)
    var tail = head

    while n1 != nil || n2 != nil {
        let tmp = ListNode(0)
        if let tmp1 = n1 {
            tmp.val += tmp1.val
        }
        if let tmp2 = n2 {
            tmp.val += tmp2.val
        }
        if over == 1 {
            tmp.val += 1
        }
        
        if tmp.val > 9 {
            over = 1
            tmp.val = tmp.val % 10
        } else {
            over = 0
        }
        
        tail.next = tmp

        tail = tail.next!
        n1 = n1?.next
        n2 = n2?.next
    }
    
    if over == 1 {
        tail.next = ListNode(1)
    }
    
    return head.next
}
