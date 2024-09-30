//
//  main.swift
//  [181839 주사위 게임1[(https://school.programmers.co.kr/learn/courses/30/lessons/181839)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let aa = a % 2 == 1
    let bb = b % 2 == 1
    
    if aa, bb {
        return a * a + b * b
    } else if !aa, !bb {
        return abs(a - b)
    } else {
        return 2 * (a + b)
    }
}

print(solution(3, 5)) // 34
print(solution(6, 1)) // 14
print(solution(2, 4)) // 2
