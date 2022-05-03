//
//  main.swift
//  1단계/약수의_개수와_덧셈
//
//  Created by Yongwoo Marco on 2022/05/03.
//

// https://programmers.co.kr/learn/courses/30/lessons/77884

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    return (left...right).reduce(0) { base, num in
        let count = (1...num).filter { num % $0 == 0 }.count
        return count % 2 == 0 ? base + num : base - num
    }
}

print(solution(13, 17)) // 43
print(solution(24, 27)) // 52
