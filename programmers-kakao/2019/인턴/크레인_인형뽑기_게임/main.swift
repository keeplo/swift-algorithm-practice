//
//  main.swift
//  2019/인턴/크레인_인형뽑기_게임
//
//  Created by Yongwoo Marco on 2022/05/06.
//

// https://programmers.co.kr/learn/courses/30/lessons/64061

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var verticalBoard = [[Int]](repeating: [], count: board.count)
    var stack = [Int](), result = 0
    
    for horizontal in board {
        for item in horizontal.enumerated() {
            if item.element != 0 {
                verticalBoard[item.offset].append(item.element)
            }
        }
    }
    
    for move in moves {
        let index = move - 1
        if !verticalBoard[index].isEmpty {
            let removeFirst = verticalBoard[index].removeFirst()
            if let last = stack.last, last == removeFirst {
                stack.removeLast()
                result += 2
            } else {
                stack.append(removeFirst)
            }
        }
    }
    
    return result
}




print(solution([[0,0,0,0,0],
                [0,0,1,0,3],
                [0,2,5,0,1],
                [4,2,4,4,2],
                [3,5,1,3,1]], [1,5,3,5,1,2,1,4])) // 4
