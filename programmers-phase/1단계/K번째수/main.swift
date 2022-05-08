//
//  main.swift
//  1단계/K번째수
//
//  Created by Yongwoo Marco on 2022/05/08.
//

// https://programmers.co.kr/learn/courses/30/lessons/42748

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map { array[$0[0]-1...$0[1]-1].sorted(by: < )[$0[2]-1] }
}

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])) // [5, 6, 3]
        
