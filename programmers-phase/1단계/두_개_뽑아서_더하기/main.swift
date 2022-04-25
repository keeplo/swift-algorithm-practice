//
//  main.swift
//  1단계/두_개_뽑아서_더하기
//
//  Created by Yongwoo Marco on 2022/04/25.
//

// https://programmers.co.kr/learn/courses/30/lessons/68644

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: Set<Int> = []
    
    numbers.enumerated().forEach { baseIndex, base in
        numbers.enumerated().forEach { otherIndex, other in
            if baseIndex != otherIndex {
                result.update(with: base + other)
            }
        }
    }
    
    return result.sorted(by: <)
}

print(solution([2,1,3,4,1])) // [2,3,4,5,6,7]
print(solution([5,0,2,7])) // [2,5,7,9,12]
