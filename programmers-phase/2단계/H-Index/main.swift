//
//  main.swift
//  2단계/H-Index
//
//  Created by Yongwoo Marco on 2022/05/12.
//

// https://programmers.co.kr/learn/courses/30/lessons/42747

import Foundation

func solution(_ citations:[Int]) -> Int {
    for (index, h) in citations.sorted(by: >).enumerated() {
        if index >= h {
            return index
        }
    }
    
    return citations.count
}

print(solution([3, 0, 6, 1, 5])) // 3
