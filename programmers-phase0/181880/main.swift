//
//  main.swift
//  [181880 1로 만들기](https://school.programmers.co.kr/learn/courses/30/lessons/181880)
//
//  Created by 김용우 on 9/12/24.
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
    
    let allCount = num_list.map {
        var count = 0, value = $0
        while true {
            if value == 1 {
                return count
            }
            
            if value % 2 == 0 {
                value /= 2
            } else {
                value = (value - 1) / 2
            }
            count += 1
        }
    }
    .reduce(0, +)
    
    return allCount
}

print(solution([12, 4, 15, 1, 14])) // 11
