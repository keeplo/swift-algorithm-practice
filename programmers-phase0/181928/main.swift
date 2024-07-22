//
//  main.swift
//  [181928-이어 붙인 수](https://school.programmers.co.kr/learn/courses/30/lessons/181928)
//
//  Created by 김용우 on 7/23/24.
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
    var odd = ""
    var even = ""
    
    for num in num_list {
        if num % 2 == 0 {
            even += "\(num)"
        } else {
            odd += "\(num)"
        }
    }
    
    return [odd, even].compactMap({ Int($0) }).reduce(0, +)
}

print(solution([3, 4, 5, 2, 1]))    // 393
print(solution([5, 7, 8, 3]))   // 581
