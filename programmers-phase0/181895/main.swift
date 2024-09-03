//
//  main.swift
//  [181895 배열 만들기 3](https://school.programmers.co.kr/learn/courses/30/lessons/181895)
//
//  Created by 김용우 on 9/4/24.
//

import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
   return intervals.map { arr[$0[0]...$0[1]] }.flatMap { $0 }
}

print(solution([1, 2, 3, 4, 5], [[1, 3], [0, 4]])) // [2, 3, 4, 1, 2, 3, 4, 5]
