//
//  main.swift
//  [181896 첫 번째로 나오는 음수](https://school.programmers.co.kr/learn/courses/30/lessons/181896)
//
//  Created by 김용우 on 9/4/24.
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
   return num_list.firstIndex(where: { $0 < 0 }) ?? -1
}

print(solution([12, 4, 15, 46, 38, -2, 15])) // 5
print(solution([13, 22, 53, 24, 15, 6])) // -1
