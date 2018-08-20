//
//  ReverseLinkList.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 09/03/2018.
//  Copyright © 2018 dopcn. All rights reserved.
//

import Foundation

func reverseLinkList(_ head:ListNode) -> ListNode {
    guard let p = head.next else {
        return head
    }
    
    while let q = p.next {
        p.next = q.next
        q.next = head.next
        head.next = q
    }
    
    let o = head.next
    p.next = head
    head.next = nil
    return o!
}

func reverseLinkList2(_ head: ListNode) -> ListNode {
    let ahead = ListNode(0)
    ahead.next = head
    
    while let p = head.next {
        let q = p.next
        p.next = ahead.next
        ahead.next = p
        head.next = q
    }
    
    return ahead.next!
}

func deleteInDoublyList(head: DoublyListNode, value: Int) -> DoublyListNode? {
    let ahead = DoublyListNode(0)
    ahead.next = head
    head.previous = ahead
    
    var node = ahead
    var deleteNext: DoublyListNode?
    while let next = node.next {
        if next.val == value {
            deleteNext = node
            break
        }
        
        if node.next != nil {
            node = node.next!
        }
    }
    
    if let delete = deleteNext {
        let tmp = delete.next
        delete.next = tmp?.next
        tmp?.next?.previous = delete
    }
    
    return ahead.next

}
