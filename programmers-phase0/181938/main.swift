//
//  main.swift
//  [181938-두 수의 연산 값 비교하기](https://school.programmers.co.kr/learn/courses/30/lessons/181938)
//
//  Created by 김용우 on 7/13/24.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    return max(2*a*b, Int("\(a)\(b)")!)
}

print(solution(2, 91))  // 364
print(solution(91, 2))  // 912
