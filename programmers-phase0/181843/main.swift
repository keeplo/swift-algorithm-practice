//
//  main.swift
//  [181843 부분 문자열인지 확인하기](https://school.programmers.co.kr/learn/courses/30/lessons/181843)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ my_string:String, _ target:String) -> Int {
    return my_string.contains(target) ? 1 : 0
}

print(solution("banana", "ana")) // 1
print(solution("banana", "wxyz")) // 0
