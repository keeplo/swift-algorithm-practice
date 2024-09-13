//
//  main.swift
//  [181870 ad 제거하기](https://school.programmers.co.kr/learn/courses/30/lessons/181870)
//
//  Created by 김용우 on 9/13/24.
//

import Foundation

func solution(_ strArr:[String]) -> [String] {
    return strArr.filter({ !$0.contains("ad") })
}

print(solution(["and","notad","abcd"])) // ["and","abcd"]
print(solution(["there","are","no","a","ds"])) // ["there","are","no","a","ds"]
