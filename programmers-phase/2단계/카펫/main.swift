//
//  main.swift
//  2단계/카펫
//
//  Created by Yongwoo Marco on 2022/05/12.
//

// https://programmers.co.kr/learn/courses/30/lessons/42842

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    for row in 1...(yellow == 1 ? 2 : yellow/2) {
        if yellow % row == 0 {
            let yellowWidth = yellow / row
            let yellowHeight = row
            
            if 2 * (yellowWidth + 2) + 2 * yellowHeight == brown {
                return [yellowWidth + 2, yellowHeight + 2]
            }
        }
    }
    
    return []
}

print(solution(10, 2)) // [4, 3]
print(solution(8, 1)) // [3, 3]
print(solution(24, 24)) // [8, 6]
