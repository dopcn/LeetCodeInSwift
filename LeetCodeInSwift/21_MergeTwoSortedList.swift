//
//  21_MergeTwoSortedList.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 20/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    let head = ListNode(-1)
    var tail = head, head1 = l1, head2 = l2
    
    while head1 != nil || head2 != nil {
        if head1 == nil {
            tail.next = head2
            head2 = head2?.next
        } else if head2 == nil {
            tail.next = head1
            head1 = head1?.next
        } else {
            if head1!.val < head2!.val {
                tail.next = head1
                head1 = head1?.next
            } else {
                tail.next = head2
                head2 = head2?.next
            }
        }
        tail = tail.next!
    }
    
    return head.next
}
