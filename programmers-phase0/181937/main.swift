//
//  main.swift
//  [181937 n의 배수](https://school.programmers.co.kr/learn/courses/30/lessons/181937)
//
//  Created by 김용우 on 9/13/24.
//

import Foundation

func solution(_ num:Int, _ n:Int) -> Int {
    return num % n == 0 ? 1 : 0
}

print(solution(98, 2)) // 1
print(solution(34, 3)) // 0
