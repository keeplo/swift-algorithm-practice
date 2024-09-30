//
//  main.swift
//  [181829 이차원 배열 대각선 순회하기](https://school.programmers.co.kr/learn/courses/30/lessons/181829)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ board:[[Int]], _ k:Int) -> Int {
    var result = 0
    
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if i + j <= k {
                result += board[i][j]
            }
        }
    }
    
    return result
}

print(solution([[0, 1, 2],[1, 2, 3],[2, 3, 4],[3, 4, 5]], 2)) // 8
