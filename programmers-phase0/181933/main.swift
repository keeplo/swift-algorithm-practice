//
//  main.swift
//  [181933-flag에 따라 다른 값 반환하기](https://school.programmers.co.kr/learn/courses/30/lessons/181933)
//
//  Created by 김용우 on 7/22/24.
//

import Foundation

func solution(_ a:Int, _ b:Int, _ flag:Bool) -> Int {
    return flag ? a + b : a - b
}

print(solution(-4, 7, true))    // 3
print(solution(-4, 7, false))   // -11
