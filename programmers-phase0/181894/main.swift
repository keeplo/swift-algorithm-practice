//
//  main.swift
//  [181894 2의 영역](https://school.programmers.co.kr/learn/courses/30/lessons/181894)
//
//  Created by 김용우 on 9/4/24.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    guard let firstIndex = arr.firstIndex(of: 2),
          let lastIndex = arr.lastIndex(of: 2) else {
        return [-1]
    }
    guard firstIndex != lastIndex else {
        return [2]
    }
    return Array(arr[firstIndex...lastIndex])
}

print(solution([1, 2, 1, 4, 5, 2, 9]  )) // [2, 1, 4, 5, 2]
print(solution([1, 2, 1]  )) // [2]
print(solution([1, 1, 1]  )) // [-1]
print(solution([1, 2, 1, 2, 1, 10, 2, 1]  )) // [2, 1, 2, 1, 10, 2]
