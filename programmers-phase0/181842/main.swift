//
//  main.swift
//  [181842 부분 문자열](https://school.programmers.co.kr/learn/courses/30/lessons/181842)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    return str2.contains(str1) ? 1 : 0
}

print(solution("abc", "aabcc")) // 1
print(solution("tbt", "tbbttb")) // 0
