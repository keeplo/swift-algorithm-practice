//
//  main.swift
//  DFS/BFS-타깃_넘버
//
//  Created by Yongwoo Marco on 2021/07/17.
//

import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var result = 0
    
    func searchByDFS(depth: Int, value: Int) {
        if depth == numbers.count {
            if target == value {
                result += 1
            }
            return
        }
        searchByDFS(depth: depth + 1, value: value + numbers[depth])
        searchByDFS(depth: depth + 1, value: value - numbers[depth])
    }
    
    searchByDFS(depth: 0, value: 0)
    
    return result
}

print(solution([1, 1, 1, 1, 1], 3))
