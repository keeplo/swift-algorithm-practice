//
//  main.swift
//  [181939-더 크게 합치기](https://school.programmers.co.kr/learn/courses/30/lessons/181939)
//
//  Created by 김용우 on 7/13/24.
//

import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    let (aString, bString) = (String(a), String(b))
    return max(Int(aString + bString)!, Int(bString + aString)!)
}

print(solution(9, 91))  // 991
print(solution(89, 8))  // 898
