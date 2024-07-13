//
//  main.swift
//  : [181940-문자열 곱하기](https://school.programmers.co.kr/learn/courses/30/lessons/181940?language=swift)
//
//  Created by 김용우 on 7/13/24.
//

import Foundation

func solution(_ my_string: String, _ k: Int) -> String {
    return [String](repeating: my_string, count: k).joined()
}

print(solution("string", 3))    // "stringstringstring"
print(solution("love", 10))     // "lovelovelovelovelovelovelovelovelovelove"
