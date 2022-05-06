//
//  main.swift
//  1단계/예산
//
//  Created by Yongwoo Marco on 2022/05/06.
//

// https://programmers.co.kr/learn/courses/30/lessons/12982

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var b = budget
    
    return d.sorted().filter({
        b -= $0
        return b >= 0
    }).count
}

print(solution([1,3,2,5,4], 9)) // 3
print(solution([2,2,3,3], 10)) // 4
