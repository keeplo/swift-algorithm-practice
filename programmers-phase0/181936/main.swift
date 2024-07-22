//
//  main.swift
//  [181936-공배수](https://school.programmers.co.kr/learn/courses/30/lessons/181936)
//
//  Created by 김용우 on 7/22/24.
//

import Foundation

func solution(_ number:Int, _ n:Int, _ m:Int) -> Int {
    return number % n == 0 && number % m == 0 ? 1 : 0
}

print(solution(60, 2, 3))  // 1
print(solution(55, 10, 5))  // 0
