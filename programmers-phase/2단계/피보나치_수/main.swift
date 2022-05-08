//
//  main.swift
//  2단계/피보나치_수
//
//  Created by Yongwoo Marco on 2022/05/08.
//

// https://programmers.co.kr/learn/courses/30/lessons/12945

import Foundation

func solution(_ n:Int) -> Int {
    var f = [0, 1]
    for i in 2...n {
        f.append( (f[i-1] + f[i-2]) % 1234567 )
    }
    return f[n]
}

print(solution(3)) // 2
print(solution(5)) // 5
