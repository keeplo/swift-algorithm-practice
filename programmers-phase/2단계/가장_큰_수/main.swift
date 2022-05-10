//
//  main.swift
//  2단계/가장_큰_수
//
//  Created by Yongwoo Marco on 2022/05/10.
//

// https://programmers.co.kr/learn/challenges

import Foundation

func solution(_ numbers:[Int]) -> String {
    let sorted = numbers.sorted { Int("\($0)\($1)")! > Int("\($1)\($0)")! }
    guard sorted[0] != 0 else { return "0" }
    return sorted.reduce("") { $0 + String($1) }
}

print(solution([6, 10, 2])) // "6210"
print(solution([3, 30, 34, 5, 9])) // "9534330"
