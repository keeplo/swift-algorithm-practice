//
//  main.swift
//  2단계/N개의_최소공배수
//
//  Created by Yongwoo Marco on 2022/05/08.
//

// https://programmers.co.kr/learn/courses/30/lessons/12953

import Foundation

// 최대공약수
func GCD(_ min: Int, _ max: Int) -> Int {
    return min % max == 0 ? max : GCD(max, min % max)
}
// 최소공배수
func LCM(_ a: Int, _ b:Int) -> Int {
    return a * b / GCD(a,b)
}

func solution(_ arr:[Int]) -> Int {
    return arr.reduce(1, {LCM($0, $1)})
}

print(solution([2,6,8,14])) // 168
print(solution([1,2,3])) // 6
