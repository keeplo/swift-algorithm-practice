//
//  main.swift
//  [181861 배열의 원소만큼 추가하기](https://school.programmers.co.kr/learn/courses/30/lessons/181861)
//
//  Created by 김용우 on 9/19/24.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr
        .map { [Int](repeating: $0, count: $0) }
        .flatMap { $0 }
}

print(solution([5, 1, 4])) // [5, 5, 5, 5, 5, 1, 4, 4, 4, 4]
print(solution([6, 6])) // [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6]
print(solution([1])) // [1]
