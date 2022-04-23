//
//  main.swift
//  1단계/짝수와_홀수
//
//  Created by Yongwoo Marco on 2022/04/23.
//

// https://programmers.co.kr/learn/courses/30/lessons/12937

import Foundation

func solution(_ num:Int) -> String {
    return num % 2 == 0 ? "Even" : "Odd"
}

print(solution(3)) // "Odd"
print(solution(4)) // "Even"
