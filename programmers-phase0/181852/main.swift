//
//  main.swift
//  [181852 뒤에서 5등 위로](https://school.programmers.co.kr/learn/courses/30/lessons/181852)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var arr = num_list.sorted(by: >)
    
    for _ in (0..<5) {
        _ = arr.popLast()
    }
    
    return arr.reversed()
}

print(solution([12, 4, 15, 46, 38, 1, 14, 56, 32, 10])) // [15, 32, 38, 46, 56]

