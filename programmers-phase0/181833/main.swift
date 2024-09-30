//
//  main.swift
//  [181833 특별한 이차원 배열 1](https://school.programmers.co.kr/learn/courses/30/lessons/181833)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result: [[Int]] = []
    
    for i in 0..<n {
        var column: [Int] = []
        for j in 0..<n {
            if i == j {
                column.append(1)
            } else {
                column.append(0)
            }
        }
        result.append(column)
    }
    
    return result
}

print(solution(3)) // [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
print(solution(6)) // [[1, 0, 0, 0, 0, 0], [0, 1, 0, 0, 0, 0], [0, 0, 1, 0, 0, 0], [0, 0, 0, 1, 0, 0], [0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 1]]
print(solution(1)) // [[1]]
