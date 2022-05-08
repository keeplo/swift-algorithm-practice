//
//  main.swift
//  1단계/최솟값_만들기
//
//  Created by Yongwoo Marco on 2022/04/25.
//

// https://programmers.co.kr/learn/courses/30/lessons/12941

import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    return zip(A.sorted(by: >), B.sorted(by: <)).reduce(0) { $0 + $1.0 * $1.1 }
}

print(solution([1, 4, 2], [5, 4, 4])) // 29
print(solution([1,2], [3,4])) // 10
       

