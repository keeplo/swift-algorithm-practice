//
//  main.swift
//  [181878 원하는 문자열 찾기](https://school.programmers.co.kr/learn/courses/30/lessons/181878)
//
//  Created by 김용우 on 9/12/24.
//

import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    return myString.lowercased().contains(pat.lowercased()) ? 1 : 0
}

print(solution("AbCdEfG", "aBc")) // 1
print(solution("aaAA", "aaaaa")) // 0
