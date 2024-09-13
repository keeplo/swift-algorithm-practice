//
//  main.swift
//  [181868 공백으로 구분하기 2](https://school.programmers.co.kr/learn/courses/30/lessons/181868)
//
//  Created by 김용우 on 9/13/24.
//

import Foundation

func solution(_ my_string:String) -> [String] {
    return my_string.components(separatedBy: " ").filter { !$0.isEmpty }
}

print(solution(" i    love  you")) // ["i", "love", "you"]
print(solution("    programmers  ")) // ["programmers"]
