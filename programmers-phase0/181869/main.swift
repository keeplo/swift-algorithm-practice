//
//  main.swift
//  [181869 공백으로 구분하기 1](https://school.programmers.co.kr/learn/courses/30/lessons/181869)
//
//  Created by 김용우 on 8/9/24.
//

import Foundation

func solution(_ my_string:String) -> [String] {
    return my_string.components(separatedBy: " ")
}

print(solution("i love you"))   // ["i", "love", "you"]
print(solution("programmers"))  // ["programmers"]
