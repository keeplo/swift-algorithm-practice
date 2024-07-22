//
//  main.swift
//: [181942_문자열 섞기](https://school.programmers.co.kr/learn/courses/30/lessons/181942?language=swift)
//
//  Created by 김용우 on 7/8/24.
//

import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    return zip(str1, str2).map({ String($0) + String($1) }).joined()
}

print(solution("aaaaa", "bbbbb")) // "ababababab"
