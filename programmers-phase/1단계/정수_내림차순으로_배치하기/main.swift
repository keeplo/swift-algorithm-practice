//
//  main.swift
//  1단계/정수_내림차순으로_배치하기
//
//  Created by Yongwoo Marco on 2022/04/26.
//

// https://programmers.co.kr/learn/courses/30/lessons/12933

import Foundation

func solution(_ n:Int64) -> Int64 {
    return Int64(String(n).sorted(by: >).reduce("") { $0 + String($1) })!
}

print(solution(118372)) // 873211

print(solution(7987654321)) // 9877654321
