//
//  main.swift
//  1단계/콜라츠_추측
//
//  Created by Yongwoo Marco on 2022/04/23.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12943

func solution(_ num:Int) -> Int {
    guard num != 1 else { return 0 }
    var n = num
    
    for count in 1..<500 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        guard n != 1 else { return count }
    }
    
    return -1
}

print(solution(6)) // 8
print(solution(16)) // 4
print(solution(626331)) // -1
