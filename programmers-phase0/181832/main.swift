//
//  main.swift
//  [181832 정수를 나선형으로 배치하기](https://school.programmers.co.kr/learn/courses/30/lessons/181832)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ n:Int) -> [[Int]] {
    var k = 1, x = 0, y = 0, d = 0, result = [[Int]](repeating: .init(repeating: 0, count: n), count: n)
    let direction = [[0, 1], [1, 0], [0, -1], [-1, 0]] // y, x
    
    while k <= n * n {        
        result[y][x] = k
        k += 1
        
        let nextX = x + direction[d][1]
        let nextY = y + direction[d][0]
        
        if nextX >= 0, nextX < n, nextY >= 0, nextY < n, result[nextY][nextX] == 0 {
            x = nextX
            y = nextY
        } else {
            if d == 3 {
                d = 0
            } else {
                d += 1
            }
            
            x = x + direction[d][1]
            y = y + direction[d][0]
        }
    }
    
    return result
}

print(solution(4)) // [[1, 2, 3, 4], [12, 13, 14, 5], [11, 16, 15, 6], [10, 9, 8, 7]]
print(solution(5)) // [[1, 2, 3, 4, 5], [16, 17, 18, 19, 6], [15, 24, 25, 20, 7], [14, 23, 22, 21, 8], [13, 12, 11, 10, 9]]
