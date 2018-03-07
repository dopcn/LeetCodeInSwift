//
//  Models.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 20/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    public func headPrint() {
        var list = "\(self.val)->"
        var next = self.next
        while let theNode = next {
            list = list + "\(theNode.val)->"
            next = theNode.next
        }
        list = list + "end"
        print(list)
    }
}

class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
