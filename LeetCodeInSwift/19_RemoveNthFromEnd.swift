//
//  19_RemoveNthFromEnd.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 22/08/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    guard let _ = head else {
        return nil
    }
    guard n > 0 else {
        return head
    }
    let before = ListNode(-1)
    before.next = head
    
    var first = before, second = before
    repeat {
        var count = 0
        while count < 2*n {
            if let theNext = second.next {
                second = theNext
            } else {
                break
            }
            count += 1
        }
        
        if count == 2*n && second.next != nil {
            first = second
        } else {
            var num = 0
            if count >= n {
                num = count - n
            } else {
                num = count
            }   
            
            while num > 0 {
                first = first.next!
                num -= 1
            }
            
            first.next = first.next?.next
        }
    } while second.next != nil
    
    return before.next
}
