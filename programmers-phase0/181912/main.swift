//
//  main.swift
//  [181912 배열 만들기 5](https://school.programmers.co.kr/learn/courses/30/lessons/181912)
//
//  Created by 김용우 on 8/19/24.
//

import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    return intStrs.compactMap { Int(String(Array($0)[s..<s+l])) }.filter({ $0 > k })
}

print(solution(["0123456789","9876543210","9999999999999"], 50000, 5, 5))   // [56789, 99999]
