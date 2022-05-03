//
//  main.swift
//  1단계/없는_숫자_더하기
//
//  Created by Yongwoo Marco on 2021/12/01.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/86051

func solution(_ numbers:[Int]) -> Int {
    return (1...9).reduce(0) { numbers.contains($1) ? $0 : $0 + $1 }
}

print(solution([5,8,4,0,6,7,9]))
print(solution([1,2,3,4,6,7,8,0]))

