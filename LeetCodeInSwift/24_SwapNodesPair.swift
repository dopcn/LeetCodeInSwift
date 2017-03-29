//
//  24_SwapNodesPair.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 28/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func swapPairs(_ head: ListNode?) -> ListNode? {
    guard head?.next != nil else {
        return head
    }
    
    let result = head?.next
    
    var achor = ListNode(-1)
    achor.next = head
    var node = achor.next?.next
    while node != nil {
        achor.next?.next = node?.next
        node?.next = achor.next
        achor.next = node
        
        achor = node!.next!
        node = achor.next?.next
    }
    
    return result
}
