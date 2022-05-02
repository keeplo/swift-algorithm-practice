//
//  main.swift
//  1단계/두_정수_사이의_합
//
//  Created by Yongwoo Marco on 2022/05/02.
//

// https://programmers.co.kr/learn/courses/30/lessons/12912

import Foundation

//func solution(_ a:Int, _ b:Int) -> Int64 {
//    return (min(Int64(a), Int64(b))...max(Int64(a), Int64(b))).reduce(0) { $0 + $1 }
//}

func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64(a + b) * Int64(max(a, b) - min(a, b) + 1) / Int64(2)
}

print(solution(3, 5)) // 12
print(solution(3, 3)) // 3
print(solution(5, 3)) // 12
