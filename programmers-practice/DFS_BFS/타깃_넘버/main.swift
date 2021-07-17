//
//  main.swift
//  DFS_BFS/타깃_넘버
//
//  Created by Yongwoo Marco on 2021/07/18.
//

import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var result = 0
    
    searchByDFS(depth: 0, value: 0, numbers, target, &result)
    
    return result
}

func searchByDFS(depth: Int, value: Int, _ numbers: [Int], _ target: Int, _ result: inout Int) {
    if depth == numbers.count {
        if target == value {
            result += 1
        }
        return
    }
    searchByDFS(depth: depth + 1, value: value + numbers[depth], numbers, target, &result)
    searchByDFS(depth: depth + 1, value: value - numbers[depth], numbers, target, &result)
}

print(solution([1, 1, 1, 1, 1], 3))
// 5
