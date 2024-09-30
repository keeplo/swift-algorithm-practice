//
//  main.swift
//  [181856 배열 비교하기](https://school.programmers.co.kr/learn/courses/30/lessons/181856)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    if arr1.count == arr2.count {
        let sum1 = arr1.reduce(0, +)
        let sum2 = arr2.reduce(0, +)
        
        if sum1 == sum2 {
            return 0
        } else {
            return sum1 > sum2 ? 1 : -1
        }
    } else {
        return arr1.count > arr2.count ? 1 : -1
    }
}

print(solution([49, 13], [70, 11, 2])) // -1
print(solution([100, 17, 84, 1], [55, 12, 65, 36])) // 1
print(solution([1, 2, 3, 4, 5], [3, 3, 3, 3, 3])) // 0
