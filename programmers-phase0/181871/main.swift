//
//  main.swift
//  [181871 문자열이 몇 번 등장하는지 세기](https://school.programmers.co.kr/learn/courses/30/lessons/181871)
//
//  Created by 김용우 on 9/13/24.
//

import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var count = 0
    
    for firstIndex in 0...(myString.count - pat.count) {
        if String(Array(myString)[firstIndex..<(firstIndex + pat.count)]) == pat {
            count += 1
        }
    }
    return count
}

print(solution("banana", "ana")) // 2
print(solution("aaaa", "aa")) // 3
