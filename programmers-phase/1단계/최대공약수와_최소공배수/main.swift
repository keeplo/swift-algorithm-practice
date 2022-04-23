//
//  main.swift
//  1단계/최대공약수와_최소공배수
//
//  Created by Yongwoo Marco on 2022/04/23.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12940

// 최대공약수
func GCD(_ min: Int, _ max: Int) -> Int {
    return min % max == 0 ? max : GCD(max, min % max)
}
// 최소공배수
func LCM(_ a: Int, _ b:Int) -> Int {
    return a * b / GCD(a,b)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    return [GCD(n, m), LCM(n, m)]
}

print(solution(3, 12)) // [3, 12]
print(solution(2, 5)) // [1, 10]
