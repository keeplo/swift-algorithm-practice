//
//  main.swift
//  1단계/자연수_뒤집어_배열로_만들기
//
//  Created by Yongwoo Marco on 2022/04/27.
//

// https://programmers.co.kr/learn/courses/30/lessons/12932

import Foundation

func solution(_ n:Int64) -> [Int] {
    return String(n).compactMap{ $0.hexDigitValue }.reversed()
}

print(solution(12345)) // [5,4,3,2,1]
print(solution(10_000_000_000)) // [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
