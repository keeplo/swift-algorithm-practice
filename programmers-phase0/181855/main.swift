//
//  main.swift
//  [181855 문자열 묶기](https://school.programmers.co.kr/learn/courses/30/lessons/181855)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ strArr:[String]) -> Int {
    var counts = [Int:Int]()
    
    for str in strArr {
        let nowCount = str.count
        if let count = counts[nowCount] {
            counts[nowCount] = count + 1
        } else {
            counts.updateValue(1, forKey: nowCount)
        }
    }
    
    return counts.values.max()!
}

print(solution(["a","bc","d","efg","hi"])) // 2
