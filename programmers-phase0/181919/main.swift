//
//  main.swift
//  [181919 콜라츠 수열 만들기](https://school.programmers.co.kr/learn/courses/30/lessons/181919)
//
//  Created by 김용우 on 7/26/24.
//

import Foundation

func solution(_ n:Int) -> [Int] {
    var current = n
    var result = [Int]()
    
    repeat {
        result.append(current)
        
        guard current != 1 else {
            break
        }
        
        if current % 2 == 0 {
            current /= 2
        } else {
            current = 3 * current + 1
        }
    } while true
    
    return result
}

print(solution(10)) // [10, 5, 16, 8, 4, 2, 1]
