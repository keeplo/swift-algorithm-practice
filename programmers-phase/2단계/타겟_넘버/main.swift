//
//  main.swift
//  2단계/타겟_넘버
//
//  Created by Yongwoo Marco on 2022/05/09.
//

// https://programmers.co.kr/learn/courses/30/lessons/43165

import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var count = 0
    
    func searchByDFS(depth: Int, value: Int) {
        guard depth != numbers.count else {
            if target == value {
                count += 1
            }
            return
        }
        searchByDFS(depth: depth + 1, value: value + numbers[depth])
        searchByDFS(depth: depth + 1, value: value - numbers[depth])
    }
    
    searchByDFS(depth: 0, value: 0)
    
    return count
}

print(solution([1, 1, 1, 1, 1], 3)) // 5
print(solution([4, 1, 2, 1], 4)) // 2
