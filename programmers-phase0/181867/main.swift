//
//  main.swift
//  [181867 x사이의 개수](https://school.programmers.co.kr/learn/courses/30/lessons/181867)
//
//  Created by 김용우 on 9/17/24.
//

import Foundation

func solution(_ myString:String) -> [Int] {
    return myString.components(separatedBy: "x").map({ $0.count })
}

print(solution("oxooxoxxox")) // [1, 2, 1, 0, 1, 0]
print(solution("xabcxdefxghi")) // [0, 3, 3, 3]
