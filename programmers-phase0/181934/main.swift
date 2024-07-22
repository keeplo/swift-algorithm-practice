//
//  main.swift
//  [181934-조건 문자열](https://school.programmers.co.kr/learn/courses/30/lessons/181934)
//
//  Created by 김용우 on 7/22/24.
//

import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    switch (ineq, eq) {
        case ("<", "="):    return n <= m ? 1 : 0
        case ("<", "!"):    return n < m ? 1 : 0
        case (">", "="):    return n >= m ? 1 : 0
        case (">", "!"):    return n > m ? 1 : 0
        default:        return 0
    }
}

print(solution("<", "=", 20, 50))   // 1
print(solution(">", "!", 41, 78))   // 0
