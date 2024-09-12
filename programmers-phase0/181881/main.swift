//
//  main.swift
//  [181881 조건에 맞게 수열 변환하기 2](https://school.programmers.co.kr/learn/courses/30/lessons/181881)
//
//  Created by 김용우 on 9/12/24.
//

import Foundation

func solution(_ arr:[Int]) -> Int {
    var before = arr, count = 0
    while true {
        let after: [Int] = before.map {
            if $0 >= 50, $0 % 2 == 0 {
                return $0 / 2
            } else if $0 < 50, $0 % 2 == 1 {
                return $0 * 2 + 1
            } else {
                return $0
            }
        }
        if zip(before, after).allSatisfy({ $0.0 == $0.1 }) {
            return count
        }
        count += 1
        before = after
    }
    
    return count
}

print(solution([1, 2, 3, 100, 99, 98])) // 5
