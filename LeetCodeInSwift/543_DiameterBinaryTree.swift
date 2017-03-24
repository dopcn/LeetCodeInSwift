//
//  543_DiameterBinaryTree.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 20/03/2017.
//  Copyright © 2017 dopcn. All rights reserved.
//

import Foundation

func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    guard let theRoot = root else {
        return 0
    }
    
    func deepestOfTree(_ root: TreeNode) -> Int {
        guard root.left != nil || root.right != nil else {
            return 0
        }
        
        if root.left == nil {
            return deepestOfTree(root.right!) + 1
        } else if root.right == nil {
            return deepestOfTree(root.left!) + 1
        } else {
            return max(deepestOfTree(root.left!)+1, deepestOfTree(root.right!)+1)
        }
    }
    
    var maxValue = 0;
    
    func longestOfNode(_ root: TreeNode) {
        guard root.left != nil || root.right != nil else {
            return
        }
        
        if root.left == nil {
            maxValue = max(maxValue, deepestOfTree(root.right!)+1)
            longestOfNode(root.right!)
        } else if root.right == nil {
            maxValue = max(maxValue, deepestOfTree(root.left!)+1)
            longestOfNode(root.left!)
        } else {
            maxValue = max(maxValue, deepestOfTree(root.right!)+deepestOfTree(root.left!)+2)
            longestOfNode(root.left!)
            longestOfNode(root.right!)
        }
    }
    
    longestOfNode(theRoot)
    
    return maxValue
}
