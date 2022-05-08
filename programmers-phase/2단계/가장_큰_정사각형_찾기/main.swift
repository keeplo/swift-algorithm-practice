//
//  main.swift
//  2단계/가장_큰_정사각형_찾기
//
//  Created by Yongwoo Marco on 2022/05/08.
//

// https://programmers.co.kr/learn/courses/30/lessons/12905

import Foundation

func solution(_ board:[[Int]]) -> Int {
    var maxSize = 0, check = board
    
    if board[0].filter({ $0 > 0}).count > 0 || board.filter({ $0[0] > 0 }).count > 0 {
        maxSize = 1
    }
    
    for y in 1..<board.count {
        for x in 1..<board[0].count {
            if check[y][x] > 0 {
                check[y][x] = [check[y-1][x-1], check[y-1][x], check[y][x-1]].min()! + 1
                maxSize = max(maxSize, check[y][x])
            }
        }
    }
    
    return maxSize * maxSize
}

print(solution([[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]])) // 9
print(solution([[0,0,1,1],[1,1,1,1]])) // 4
