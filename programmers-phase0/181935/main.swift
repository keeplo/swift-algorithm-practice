//
//  main.swift
//  [181935-홀짝에 따라 다른 값 반환하기](https://school.programmers.co.kr/learn/courses/30/lessons/181935)
//
//  Created by 김용우 on 7/22/24.
//

import Foundation

func solution(_ n:Int) -> Int {
    return n % 2 == 0
    ? [Int](repeating: n, count: n/2).enumerated().reduce(0) {
        let current = $1.element - ($1.offset * 2)
        return $0 + (current * current)
    }
    : [Int](repeating: n, count: n/2 + 1).enumerated().reduce(0) {
        let current = $1.element - ($1.offset * 2)
        return $0 + current
    }
}

print(solution(7))  // 16
print(solution(10)) // 220
