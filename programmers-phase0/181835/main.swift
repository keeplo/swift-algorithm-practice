//
//  main.swift
//  [181835 조건에 맞게 수열 변환하기3](https://school.programmers.co.kr/learn/courses/30/lessons/181835)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    return arr.map { k % 2 == 1 ? $0 * k : $0 + k }
}

print(solution([1, 2, 3, 100, 99, 98], 3)) // [3, 6, 9, 300, 297, 294]
print(solution([1, 2, 3, 100, 99, 98], 2)) // [3, 4, 5, 102, 101, 100]
