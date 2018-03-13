//
//  207_CourseSchedule.swift
//  LeetCodeInSwift
//
//  Created by 纬洲 冯 on 07/03/2018.
//  Copyright © 2018 dopcn. All rights reserved.
//

import Foundation

func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
    guard numCourses > 0 && prerequisites.count > 0 else {
        return true;
    }
    
    return true
}

func testCanFinish() {
    let one = [[1,2],[2,3],[3,4],[4,1]]
    let two = [[1,2],[3,4],[4,2]]
    
    assert(canFinish(4, one) == false)
    assert(canFinish(4, two) == false)
}
