//
//  main.swift
//  [181865 간단한 식 계산하기](https://school.programmers.co.kr/learn/courses/30/lessons/181865)
//
//  Created by 김용우 on 9/17/24.
//

import Foundation

func solution(_ binomial:String) -> Int {
    let operators = binomial.components(separatedBy: " ")
    switch operators[1] {
        case "+":
            return Int(operators[0])! + Int(operators[2])!
        case "-":
            return Int(operators[0])! - Int(operators[2])!
        default:
            return Int(operators[0])! * Int(operators[2])!
    }
}

print(solution("43 + 12")) // 55
print(solution("0 - 7777")) // -7777
print(solution("40000 * 40000")) // 1600000000
