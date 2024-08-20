//
//  main.swift
//  [181904 세로 읽기](https://school.programmers.co.kr/learn/courses/30/lessons/181904)
//
//  Created by 김용우 on 8/20/24.
//

import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    return stride(from: 0, to: my_string.count, by: m).map({ String(Array(my_string)[$0 + c - 1]) }).joined()
}

print(solution("ihrhbakrfpndopljhygc", 4, 2))   // "happy"
print(solution("programmers", 1, 1))            // "programmers"
