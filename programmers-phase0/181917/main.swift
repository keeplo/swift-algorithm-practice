//
//  main.swift
//  [181917 간단한 논리 연산](https://school.programmers.co.kr/learn/courses/30/lessons/181917)
//
//  Created by 김용우 on 7/26/24.
//

import Foundation

func solution(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
    return (x1 || x2) && (x3)
}

print(solution(false, true, true, true))    // true
print(solution(true, false, false, false))  // false
