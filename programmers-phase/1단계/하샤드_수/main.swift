//
//  main.swift
//  1단계/하샤드_수
//
//  Created by Yongwoo Marco on 2022/04/22.
//

// https://programmers.co.kr/learn/courses/30/lessons/12947

import Foundation

func solution(_ x:Int) -> Bool {
    let sumOfDigits = String(x).compactMap { Int(String($0)) }.reduce(0, +)
    return x % sumOfDigits == 0
}

print(solution(10)) // true
print(solution(12)) // true
print(solution(11)) // false
print(solution(13)) // false

print(solution(1))
print(solution(10000))
