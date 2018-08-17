//
//  Tree.swift
//  LeetCodeInSwift
//
//  Created by Weizhou Feng on 2018/8/13.
//  Copyright © 2018 dopcn. All rights reserved.
//

import Foundation

func preorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let theRoot = root else {
        return [Int]()
    }
    
    var result = [Int]()
    func iteratorTree(_ root: TreeNode) {
        result.append(root.val)
        if let left = root.left {
            iteratorTree(left)
        }
        if let right = root.right {
            iteratorTree(right)
        }
    }
    iteratorTree(theRoot)
    return result
}

// 用栈存储遍历过的根
// 想到了用栈，但是没写出这个循环，为什么？？

func preorderTraversal2(_ root: TreeNode?) -> [Int] {
    var result = [Int](),
        stack = [TreeNode](),
        node = root
    
    while node != nil || stack.count != 0 {
        while let theNode = node {
            result.append(theNode.val)
            stack.append(theNode)
            node = theNode.left
        }
        if stack.count != 0 {
            node = stack.popLast()!.right
        }
    }
    
    return result
}

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var result = [Int](),
    stack = [TreeNode](),
    node = root
    
    while node != nil || stack.count != 0 {
        while let theNode = node {
            stack.append(theNode)
            node = theNode.left
        }
        if stack.count != 0 {
            let left = stack.popLast()!
            result.append(left.val)
            node = left.right
        }
    }
    
    return result
}

// 将树中的元素全部按照后续遍历的反顺序压入栈，然后依次出栈

func postorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let theRoot = root else {
        return [Int]()
    }
    
    var result = [Int](),
        stack = [TreeNode](),
        pre: TreeNode?
    
    stack.append(theRoot)
    
    while stack.count != 0 {
        let node = stack.last!
        if (node.left == nil && node.right == nil) || (pre != nil && (node.left === pre || node.right === pre)) {
            result.append(node.val)
            _ = stack.popLast()
            pre = node
        } else {
            if let right = node.right {
                stack.append(right)
            }
            if let left = node.left {
                stack.append(left)
            }
        }
    }
    
    return result
}

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let theRoot = root else {
        return [[Int]]()
    }
    
    var result = [[Int]](),
        next = [TreeNode]()
    
    next.append(theRoot)
    
    while next.count != 0 {
        var level = [Int](),
            newNext = [TreeNode](),
            i = 0
        while i < next.count {
            level.append(next[i].val)
            if let left = next[i].left {
                newNext.append(left)
            }
            if let right = next[i].right {
                newNext.append(right)
            }
            i+=1
        }
        result.append(level)
        next = newNext
    }
    
    return result
}





