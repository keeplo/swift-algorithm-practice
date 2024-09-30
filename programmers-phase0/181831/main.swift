//
//  main.swift
//  [181831 특별한 이차원 배열2](https://school.programmers.co.kr/learn/courses/30/lessons/181831)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ arr:[[Int]]) -> Int {
    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            if arr[i][j] == arr[j][i] {
                continue
            } else {
                return 0
            }
        }
    }
    return 1
}

print(solution([[5, 192, 33], [192, 72, 95], [33, 95, 999]])) // 1
print(solution([[19, 498, 258, 587], [63, 93, 7, 754], [258, 7, 1000, 723], [587, 754, 723, 81]])) // 0
