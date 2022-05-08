//
//  main.swift
//  2단계/다음_큰_숫자
//
//  Created by Yongwoo Marco on 2022/05/08.
//

// https://programmers.co.kr/learn/courses/30/lessons/12911

import Foundation

func solution(_ n:Int) -> Int {
    let numberOfOne = String(n, radix: 2).filter{ $0 == "1" }.count
    
    for nextNumber in (n + 1)...1000000 {
        if String(nextNumber, radix: 2).filter({ $0 == "1" }).count == numberOfOne {
            return nextNumber
        }
    }
    
    return -1
}

print(solution(78))  // 83
print(solution(15))  // 23
