//
//  main.swift
//  [181838 날짜 비교하기](https://school.programmers.co.kr/learn/courses/30/lessons/181838)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ date1:[Int], _ date2:[Int]) -> Int {
    for index in 0..<date1.count {
        if date1[index] < date2[index] {
            return 1
        } else if date1[index] == date2[index] {
            continue
        } else {
            return 0
        }
    }
    
    return 0
}

print(solution([2021, 12, 28], [2021, 12, 29])) // 1
print(solution([1024, 10, 24], [1024, 10, 24])) // 0
