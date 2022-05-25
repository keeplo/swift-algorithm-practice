//
//  main.swift
//  2단계/예상_대진표
//
//  Created by Yongwoo Marco on 2022/05/25.
//

// https://programmers.co.kr/learn/courses/30/lessons/12985

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var A = a, B = b, round = 0
    
    while A != B {
        A = (A%2 == 1 ? (A+1)/2 : A/2 )
        B = (B%2 == 1 ? (B+1)/2 : B/2 )
        
        round += 1
    }
    
    return round
}

print(solution(8, 4, 7))  // 3
print(solution(8, 1, 2))  // 1
print(solution(Int( pow(2.0, 19) ), 1, Int( pow(2.0, 19) )))  // 1
