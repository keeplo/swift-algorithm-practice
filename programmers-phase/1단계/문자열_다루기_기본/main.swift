//
//  main.swift
//  1단계/문자열_다루기_기본
//
//  Created by Yongwoo Marco on 2022/04/29.
//

// https://programmers.co.kr/learn/courses/30/lessons/12918

import Foundation

func solution(_ s:String) -> Bool {
    guard s.count == 4 || s.count == 6 else { return false}
    return s.filter { !$0.isNumber }.count == 0
}

print(solution("a234")) // false
print(solution("1234")) // true
print(solution(" 123"))
