//
//  main.swift
//  [181883 수열과 구간 쿼리 1](https://school.programmers.co.kr/learn/courses/30/lessons/181883)
//
//  Created by 김용우 on 9/6/24.
//

import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
   var array = arr
   for query in queries {
      for index in query[0]...query[1] {
         array[index] += 1
      }
   }
   return array
}

print(solution([0, 1, 2, 3, 4], [[0, 1],[1, 2],[2, 3]])) // [1, 3, 4, 4, 4]
