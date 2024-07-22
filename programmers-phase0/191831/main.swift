//
//  main.swift
//  [191831-등차수열의 특정한 항만 더하기](https://school.programmers.co.kr/learn/courses/30/lessons/181931)
//
//  Created by 김용우 on 7/23/24.
//

import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    return (0..<included.count).reduce(0) {
        $0 + (included[$1] ? a + d * $1 : 0)
    }
}

print(solution(3, 4, [true, false, false, true, true]))     // 37
print(solution(7, 1, [false, false, false, true, false, false, false]))     // 10
