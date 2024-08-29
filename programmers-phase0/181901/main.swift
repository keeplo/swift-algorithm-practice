//
//  main.swift
//  [181901 배열 만들기1](https://school.programmers.co.kr/learn/courses/30/lessons/181901)
//
//  Created by 김용우 on 8/29/24.
//

import Foundation

func solution(_ n:Int, _ k:Int) -> [Int] {
    return (1...n).filter({ $0 % k == 0 })
}

print(solution(10, 3)) // [3, 6, 9]
print(solution(15, 5)) // [5, 10, 15]
