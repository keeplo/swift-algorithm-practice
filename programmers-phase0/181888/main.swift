//
//  main.swift
//  [181888 n개 간격의 원소들](https://school.programmers.co.kr/learn/courses/30/lessons/181888)
//
//  Created by 김용우 on 9/5/24.
//

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
   return stride(from: 0, to: num_list.count, by: n).map { num_list[$0] }
}

print(solution([4, 2, 6, 1, 7, 6], 2)) // [4, 6, 7]
print(solution([4, 2, 6, 1, 7, 6], 4)) // [4, 7]
