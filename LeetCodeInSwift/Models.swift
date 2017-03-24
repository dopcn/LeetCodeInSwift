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
