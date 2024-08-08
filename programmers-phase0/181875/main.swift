//
//  main.swift
//  [181875 배열에서 무자열 대소문자 변환하기](https://school.programmers.co.kr/learn/courses/30/lessons/181875)
//
//  Created by 김용우 on 8/9/24.
//

import Foundation

func solution(_ strArr:[String]) -> [String] {
    return (0..<strArr.count)
        .map { $0 % 2 == 0 ? strArr[$0].lowercased() : strArr[$0].uppercased() }
}

print(solution(["AAA","BBB","CCC","DDD"]))  // ["aaa","BBB","ccc","DDD"]
print(solution(["aBc","AbC"]))              // ["abc","ABC"]
