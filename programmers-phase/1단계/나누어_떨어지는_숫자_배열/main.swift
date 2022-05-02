//
//  main.swift
//  1단계/나누어_떨어지는_숫자_배열
//
//  Created by Yongwoo Marco on 2022/05/02.
//

// https://programmers.co.kr/learn/courses/30/lessons/12910

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter { $0 != 0 && $0 % divisor == 0 }
    return result.isEmpty ? [-1] : result.sorted(by: <)
}

print(solution([5, 9, 7, 10], 5)) // [5, 10]
print(solution([2, 36, 1, 3], 1)) // [1, 2, 3, 36]
print(solution([3,2,6], 10)) // [-1]
