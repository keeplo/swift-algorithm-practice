//
//  main.swift
//  1단계/평균_구하기
//
//  Created by Yongwoo Marco on 2022/04/22.
//

// https://programmers.co.kr/learn/courses/30/lessons/12944

import Foundation

func solution(_ arr:[Int]) -> Double {
    return  arr.reduce(0) { $0 + Double($1) } / Double(arr.count)
}

print(solution([1,2,3,4])) // 2.5
print(solution([5,5]))  // 5
