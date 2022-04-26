//
//  main.swift
//  1단계/정수_제곱근_판별
//
//  Created by Yongwoo Marco on 2022/04/26.
//

// https://programmers.co.kr/learn/courses/30/lessons/12934

import Foundation

func solution(_ n:Int64) -> Int64 {
    let num = Int64(sqrt(Double(n)))
    return num * num == n ? (num + 1) * (num + 1) : -1
}

print(solution(121)) // 144
print(solution(3)) // -1

