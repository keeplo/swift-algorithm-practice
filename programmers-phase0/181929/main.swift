//
//  main.swift
//  [181929 원소들의 곱과 합](https://school.programmers.co.kr/learn/courses/30/lessons/181929)
//
//  Created by 김용우 on 9/13/24.
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
    return num_list.reduce(1, *) < Int(pow(Double(num_list.reduce(0, +)), 2)) ? 1 : 0
}

print(solution([3, 4, 5, 2, 1])) // 1
print(solution([5, 7, 8, 3])) // 0
