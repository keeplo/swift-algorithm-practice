//
//  main.swift
//  1단계/체육복
//
//  Created by Yongwoo Marco on 2022/05/08.
//

// https://programmers.co.kr/learn/courses/30/lessons/42862

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var mutableReserve = reserve
    let exceptReserveLosts = lost.filter {
        if let index = mutableReserve.firstIndex(of: $0) {
            mutableReserve.remove(at: index)
            return false
        }
        return true
    }.sorted(by: <)
    
    print(exceptReserveLosts)
    print(mutableReserve)
    
    let finalLosts = exceptReserveLosts.filter {
        if let index = mutableReserve.firstIndex(of: $0 - 1) {
            mutableReserve.remove(at: index)
        } else if let index = mutableReserve.firstIndex(of: $0 + 1) {
            mutableReserve.remove(at: index)
        } else {
            return true
        }
        return false
    }
        
    return n - finalLosts.count
}

print(solution(5, [2, 4], [1, 3, 5]))  // 5
print(solution(5, [2, 3], [2, 5]))  // 5
print(solution(5, [2, 4], [3]))  // 4
print(solution(3, [3], [1]))  // 2
