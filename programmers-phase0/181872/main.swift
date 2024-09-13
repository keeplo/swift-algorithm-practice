//
//  main.swift
//  [181872 특정 문자열로 끝나는 가장 긴 부분 문자열 찾기](https://school.programmers.co.kr/learn/courses/30/lessons/181872)
//
//  Created by 김용우 on 9/13/24.
//

import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    var splitedString = myString.components(separatedBy: pat)
    splitedString.removeLast()
    return splitedString.joined(separator: pat) + pat
}

print(solution("AbCdEFG", "dE")) // "AbCdE"
print(solution("AAAAaaaa", "a")) // "AAAAaaaa"
