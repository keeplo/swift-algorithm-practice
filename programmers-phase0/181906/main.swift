//
//  main.swift
//  [181906 접두사인지 확인하기](https://school.programmers.co.kr/learn/courses/30/lessons/181906)
//
//  Created by 김용우 on 8/20/24.
//

import Foundation

func solution(_ my_string:String, _ is_prefix:String) -> Int {
    guard my_string.count > is_prefix.count else { return 0 }
    return (0..<is_prefix.count).filter({ Array(my_string)[$0] == Array(is_prefix)[$0] }).count == is_prefix.count ? 1 : 0
}

print(solution("banana", "ban"))     // 1
print(solution("banana", "nan"))     // 0
print(solution("banana", "abcd"))    // 0
print(solution("banana", "bananan")) // 0
