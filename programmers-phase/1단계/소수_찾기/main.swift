//
//  main.swift
//  1단계/소수_찾기
//
//  Created by Yongwoo Marco on 2022/04/16.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12921

// 구버전 - 시간초과
//func solution(_ n:Int) -> Int {
//    return (2...n).filter({ (i: Int) -> Bool in
//        return (2..<i).filter({ i%$0==0 }).isEmpty
//        }).count
//}

// 신버전
//func solution(_ n:Int) -> Int {
//    var nonPrimes = [Bool](repeating: false, count: n + 1), result = 0
//
//    for num in 2...n {
//        if !nonPrimes[num] {
//            var multi = 1
//            while multi * num <= n {
//                nonPrimes[multi * num] = true
//                multi += 1
//            }
//            result += 1
//        }
//    }
//
//    return result
//}

func solution(_ n:Int) -> Int {
    var nonPrimes = [Bool](repeating: false, count: n + 1), result = 0

    for num in 2...n {
        if !nonPrimes[num] {
            for multi in stride(from: num, through: n, by: num) {
                nonPrimes[multi] = true
            }
            result += 1
        }
    }

    return result
}

print(solution(10)) // 4
print(solution(5)) // 3
