//
//  main.swift
//  1단계/음양_더하기
//
//  Created by Yongwoo Marco on 2022/01/04.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/76501
func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var sum = 0
    
    for index in 0..<signs.count {
        sum += signs[index] ? absolutes[index] : -absolutes[index]
    }
    
    return sum
}

print(solution([4,7,12], [true,false,true])) // 9
print(solution([1,2,3], [false,false,true])) // 0
