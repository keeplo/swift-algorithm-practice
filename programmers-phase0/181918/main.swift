//
//  main.swift
//  [18191 배열 만들기 4](https://school.programmers.co.kr/learn/courses/30/lessons/181918)
//
//  Created by 김용우 on 7/26/24.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var i = 0
    var stk = [Int]()
    
    while true {
        if let last = stk.last {
            if last < arr[i] {
                stk.append(arr[i])
                i += 1
            } else {
                _ = stk.popLast()
            }
            
            guard i < arr.count else {
                break
            }
        } else {
            stk.append(arr[i])
            i += 1
        }
    }
    
    return stk
}

print(solution([1, 4, 2, 5, 3]))    // [1, 2, 3]
