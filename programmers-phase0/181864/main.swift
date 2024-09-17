//
//  main.swift
//  [181864 문자열 바꿔서 찾기](https://school.programmers.co.kr/learn/courses/30/lessons/181864)
//
//  Created by 김용우 on 9/17/24.
//

import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    return myString.map({ $0 == "A" ? "B" : "A" }).joined().contains(pat) ? 1 : 0
}

print(solution("ABBAA", "AABB")) // 1
print(solution("ABAB", "ABAB")) // 0
