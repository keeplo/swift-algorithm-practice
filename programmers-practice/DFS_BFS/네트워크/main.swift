//
//  main.swift
//  DFS_BFS/네트워크
//
//  Created by Yongwoo Marco on 2021/08/08.
//

import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var matrix = Array<Int>(repeating: n, count: n)
    
    for index in 0..<n {
        if matrix[index] == n {
            bfs(flag: index, start: index, &matrix, computers)
        }
    }
        
    return Set(matrix).count
}

func bfs(flag: Int, start: Int, _ matrix: inout [Int], _ computers: [[Int]]) {
    matrix[start] = flag
    
    for i in 0..<computers.count {
        if i != start, computers[start][i] == 1, matrix[i] == computers.count {
            bfs(flag: flag, start: i, &matrix, computers)
        }
    }
}

print(solution(3, [[1, 1, 0], [1, 1, 0], [0, 0, 1]]))
// 2
print(solution(3, [[1, 1, 0], [1, 1, 1], [0, 1, 1]]))
// 1
