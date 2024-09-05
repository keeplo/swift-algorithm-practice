//
//  main.swift
//  [181891 순서 바꾸기](https://school.programmers.co.kr/learn/courses/30/lessons/181891)
//
//  Created by 김용우 on 9/5/24.
//

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
   return Array(num_list[n..<num_list.count]) + Array(num_list[0..<n])
}

print(solution([2, 1, 6], 1)) // [1, 6, 2]
print(solution([5, 2, 1, 7, 5], 3)) // [7, 5, 5, 2, 1]
