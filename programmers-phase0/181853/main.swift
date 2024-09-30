//
//  main.swift
//  [181853 뒤에서 5등까지](https://school.programmers.co.kr/learn/courses/30/lessons/181853)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return num_list.sorted(by: <)[0..<5].compactMap({ Int($0) })
}

print(solution([12, 4, 15, 46, 38, 1, 14])) // [1, 4, 12, 14, 15]
