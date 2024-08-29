//
//  main.swift
//  [181898 가까운 1 찾기](https://school.programmers.co.kr/learn/courses/30/lessons/181898)
//
//  Created by 김용우 on 8/29/24.
//

import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
    for index in (idx..<arr.count) {
      if arr[index] == 1 {
        return index
      }
    }
    return -1
}

print(solution([0, 0, 0, 1], 1))        // 3
print(solution([1, 0, 0, 1, 0, 0], 4))  // -1
print(solution([1, 1, 1, 1, 0], 3))     // 3
