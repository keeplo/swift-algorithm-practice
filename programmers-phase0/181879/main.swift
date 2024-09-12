//
//  main.swift
//  [181879 길이에 따른 연산](https://school.programmers.co.kr/learn/courses/30/lessons/181879)
//
//  Created by 김용우 on 9/12/24.
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
    return num_list.count > 10 ? num_list.reduce(0, +) : num_list.reduce(1, *)
}

print(solution([3, 4, 5, 2, 5, 4, 6, 7, 3, 7, 2, 2, 1])) // 51
print(solution([2, 3, 4, 5])) // 120
