//
//  main.swift
//  1단계/수박수박수박수박수박수?
//
//  Created by Yongwoo Marco on 2022/04/28.
//

// https://programmers.co.kr/learn/courses/30/lessons/12922

import Foundation

func solution(_ n:Int) -> String {
    return [String](repeating: "수박", count: n/2).joined() + (n % 2 == 1 ? "수" : "")
}

print(solution(3)) // "수박수"
print(solution(4)) // "수박수박"
