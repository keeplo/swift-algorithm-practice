//
//  main.swift
//  1단계/내적
//
//  Created by Yongwoo Marco on 2022/01/19.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/70128
func solution(_ a:[Int], _ b:[Int]) -> Int {
    return (0..<a.count).reduce(0) { $0 + a[$1]*b[$1] }
}

print(solution([1,2,3,4], [-3,-1,0,2])) // 3
print(solution([-1,0,1], [1,0,-1])) // -2
