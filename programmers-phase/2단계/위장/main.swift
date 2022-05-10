//
//  main.swift
//  2단계/위장
//
//  Created by Yongwoo Marco on 2022/05/10.
//

// https://programmers.co.kr/learn/courses/30/lessons/42578

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var counter = [String:Int]()
    
    for info in clothes {
        counter[info[1]] = (counter[info[1]] ?? 0) + 1
    }
    
    return counter.reduce(1){ $0 * ($1.value + 1) } - 1
}

print(solution([["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"]]))
// 5
print(solution([["crowmask", "face"], ["bluesunglasses", "face"], ["smoky_makeup", "face"]]))
// 3
