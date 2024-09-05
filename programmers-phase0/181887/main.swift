//
//  main.swift
//  [181887 홀수 vs 짝수](https://school.programmers.co.kr/learn/courses/30/lessons/181887)
//
//  Created by 김용우 on 9/6/24.
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
   return max(
      num_list.enumerated().reduce(0, { $0 + ($1.offset % 2 == 1 ? $1.element : 0) }),
      num_list.enumerated().reduce(0, { $0 + ($1.offset % 2 == 0 ? $1.element : 0) })
   )
}

print(solution([4, 2, 6, 1, 7, 6])) // 17
print(solution([-1, 2, 5, 6, 3])) // 8
