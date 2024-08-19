//
//  main.swift
//  [181908 접미사인지 확인하기](https://school.programmers.co.kr/learn/courses/30/lessons/181908)
//
//  Created by 김용우 on 8/19/24.
//

import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    return (0..<my_string.count).map({ Array(my_string)[$0..<my_string.count].map({ String($0) }).joined() }).filter({ $0 == is_suffix }).isEmpty ? 0 : 1
}

print(solution("banana", "ana"))        // 1
print(solution("banana", "nan"))        // 0
print(solution("banana", "wxyz"))       // 0
print(solution("banana", "abanana"))    // 0
