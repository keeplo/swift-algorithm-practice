//
//  main.swift
//  [120840 구슬을 나누는 경우의 수](https://school.programmers.co.kr/learn/courses/30/lessons/120840)
//
//  Created by 김용우 on 7/25/24.
//

import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    guard balls > share else { return 1 }
    
    return Int(round(f(n: balls, m: share) / f(n: balls - share, m: 1)))
}

func f(n: Int, m: Int) -> Double {
    guard n > m else { return 1 }
    return Double(n) * f(n: n - 1, m: m)
}

// Int 범위 주의 30! -> 범위 초과

print(solution(3, 2))   // 3
print(solution(5, 3))   // 10
