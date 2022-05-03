//
//  main.swift
//  1단계/나머지가_1이_되는_수_찾기
//
//  Created by Yongwoo Marco on 2021/12/01.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/87389

func solution(_ n:Int) -> Int {
    var result = 2
    while n % result != 1 {
        result += 1
    }
    return result
}

print(solution(10))
print(solution(12))

