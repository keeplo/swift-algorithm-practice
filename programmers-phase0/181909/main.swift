//
//  main.swift
//  [181909 접미사 배열](https://school.programmers.co.kr/learn/courses/30/lessons/181909)
//
//  Created by 김용우 on 8/19/24.
//

import Foundation

func solution(_ my_string:String) -> [String] {
    return (0..<my_string.count).map({ Array(my_string)[$0..<my_string.count].map({ String($0) }).joined() }).sorted(by: <)
}

print(solution("banana"))       // ["a", "ana", "anana", "banana", "na", "nana"]
print(solution("programmers"))  // ["ammers", "ers", "grammers", "mers", "mmers", "ogrammers", "programmers", "rammers", "rogrammers", "rs", "s"]
