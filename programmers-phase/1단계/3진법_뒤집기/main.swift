//
//  main.swift
//  1단계/3진법_뒤집기
//
//  Created by Yongwoo Marco on 2022/05/03.
//

// https://programmers.co.kr/learn/courses/30/lessons/68935

import Foundation

func solution(_ n:Int) -> Int {
    let reversedNumber = String(n, radix: 3).reversed()
    return Int(String(reversedNumber), radix: 3) ?? 0
}

print(solution(45)) // 7
print(solution(125)) // 229
