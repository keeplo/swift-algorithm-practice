//
//  main.swift
//  1단계/약수의_합
//
//  Created by Yongwoo Marco on 2022/04/28.
//

// https://programmers.co.kr/learn/courses/30/lessons/12928

import Foundation

func solution(_ n:Int) -> Int {
    guard n != 0 else { return 0 }
    return (1...n).reduce(0) { n % $1 == 0 ? $0 + $1 : $0 }
}

print(solution(12)) // 28
print(solution(5)) // 6
