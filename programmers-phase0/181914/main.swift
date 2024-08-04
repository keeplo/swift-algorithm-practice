//
//  main.swift
//  [181914 9로 나눈 나머지](https://school.programmers.co.kr/learn/courses/30/lessons/181914)
//
//  Created by 김용우 on 8/5/24.
//

import Foundation

func solution(_ number:String) -> Int {
    let sum = number.compactMap({ Int(String($0)) }).reduce(0, +)
    guard sum > 0 else { return 0 }
    return sum % 9
}

print(solution("123"))  //  6
print(solution("78720646226947352489"))     // 2
