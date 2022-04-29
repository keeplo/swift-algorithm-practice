//
//  main.swift
//  1단계/문자열을_정수로_바꾸기
//
//  Created by Yongwoo Marco on 2022/04/29.
//

// https://programmers.co.kr/learn/courses/30/lessons/12925

import Foundation

func solution(_ s:String) -> Int {
    return Int(s)!
}

print(solution("1234")) // 1234
print(solution("-1234")) // -1234
