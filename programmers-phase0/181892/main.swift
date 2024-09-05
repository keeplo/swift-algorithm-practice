//
//  main.swift
//  [181892 n 번째 원소부터](https://school.programmers.co.kr/learn/courses/30/lessons/181892)
//
//  Created by 김용우 on 9/5/24.
//

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
   return Array(num_list[(n - 1)..<num_list.count])
}

print(solution([2, 1, 6], 3)) // [6]
print(solution([5, 2, 1, 7, 5], 2)) // [2, 1, 7, 5]
