//
//  main.swift
//  1단계/제일_작은_수_제거하기
//
//  Created by Yongwoo Marco on 2022/04/26.
//

// https://programmers.co.kr/learn/courses/30/lessons/12935

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    guard arr.count > 1 else { return [-1] }
    guard let min = arr.min() else { return [-1] }
    return arr.filter { $0 != min }
}

print(solution([4,3,2,1])) // [4,3,2]
print(solution([10])) // [-1]
