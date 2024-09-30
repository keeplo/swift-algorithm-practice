//
//  main.swift
//  [181840 정수 찾기](https://school.programmers.co.kr/learn/courses/30/lessons/181840)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> Int {
    return num_list.contains(n) ? 1 : 0
}

print(solution([1, 2, 3, 4, 5], 3)) // 1
print(solution([15, 98, 23, 2, 15], 20)) // 0
