//
//  main.swift
//  1단계/자릿수_더하기
//
//  Created by Yongwoo Marco on 2022/04/27.
//

// https://programmers.co.kr/learn/courses/30/lessons/12931

import Foundation

func solution(_ n:Int) -> Int {
    return String(n).compactMap { $0.hexDigitValue }.reduce(0, +)
}

print(solution(123)) // 6
print(solution(987)) // 24
