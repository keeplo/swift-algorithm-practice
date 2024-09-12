//
//  main.swift
//  [181882 조건에 맞게 수열 변환하기 1](https://school.programmers.co.kr/learn/courses/30/lessons/181882)
//
//  Created by 김용우 on 9/12/24.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr.map {
        if $0 >= 50, $0 % 2 == 0 {
            return $0 / 2
        } else if $0 < 50, $0 % 2 == 1 {
            return $0 * 2
        } else {
            return $0
        }
    }
}

print(solution([1, 2, 3, 100, 99, 98])) // [2, 2, 6, 50, 99, 49]
