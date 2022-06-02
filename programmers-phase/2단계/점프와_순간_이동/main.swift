//
//  main.swift
//  2단계/점프와_순간_이동
//
//  Created by Yongwoo Marco on 2022/06/02.
//

// https://programmers.co.kr/learn/courses/30/lessons/12980

import Foundation

func solution(_ n:Int) -> Int {
    var distance = n, cost = 0
    
    while distance > 0 {
        if distance % 2 == 1 {
            cost += 1
        }
        
        distance /= 2
    }
    
    return cost
}

print(solution(5))      // 2
print(solution(6))      // 2
print(solution(5000))   // 5
