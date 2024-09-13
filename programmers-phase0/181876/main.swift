//
//  main.swift
//  [181876 소문자로 바꾸기](https://school.programmers.co.kr/learn/courses/30/lessons/181876)
//
//  Created by 김용우 on 9/13/24.
//

import Foundation

func solution(_ myString:String) -> String {
    return myString.map({ $0.lowercased() }).map({ String($0) }).joined()
}

print(solution("aBcDeFg")) // "abcdefg"
print(solution("aaa")) // "aaa"
