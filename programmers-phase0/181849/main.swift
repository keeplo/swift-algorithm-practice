//
//  main.swift
//  [181849 문자열 정수의 합](https://school.programmers.co.kr/learn/courses/30/lessons/181849)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ num_str:String) -> Int {
    return num_str.compactMap({ Int(String($0)) }).reduce(0, +)
}

print(solution("123456789")) // 45
print(solution("1000000")) // 1
