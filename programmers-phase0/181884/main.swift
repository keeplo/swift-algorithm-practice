//
//  main.swift
//  [181884 n보다 커질 때까지 더하기](https://school.programmers.co.kr/learn/courses/30/lessons/181884)
//
//  Created by 김용우 on 9/6/24.
//

import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
   return numbers.reduce(0, { $0 + ($0 > n ? 0 : $1) })
}

print(solution([34, 5, 71, 29, 100, 34], 123)) // 139
print(solution([58, 44, 27, 10, 100], 139)) // 239
