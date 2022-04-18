//
//  main.swift
//  1단계/x만큼_간격이_있는_n개의_숫자
//
//  Created by Yongwoo Marco on 2022/04/18.
//

// https://programmers.co.kr/learn/courses/30/lessons/12954

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    return (1...n).map{ Int64($0) * Int64(x) }
}

print(solution(2, 5)) // [2,4,6,8,10]
print(solution(4, 3)) // [4,8,12]
print(solution(-4, 2)) // [-4, -8]
