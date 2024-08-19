//
//  main.swift
//  [181911 부분 문자열 이어 붙여 문자열 만들기](https://school.programmers.co.kr/learn/courses/30/lessons/181911)
//
//  Created by 김용우 on 8/19/24.
//

import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    return my_strings.indices.map({ Array(my_strings[$0])[parts[$0][0]...parts[$0][1]].map({ String($0) }).joined() }).joined()
}

print(solution(["progressive", "hamburger", "hammer", "ahocorasick"], [[0, 4], [1, 2], [3, 5], [7, 7]])) // "programmers"
