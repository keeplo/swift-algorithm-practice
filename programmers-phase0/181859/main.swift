//
//  main.swift
//  [181859 배열 만들기 6](https://school.programmers.co.kr/learn/courses/30/lessons/181859)
//
//  Created by 김용우 on 9/19/24.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var i = 0, stk = [Int]()
    
    while i < arr.count {
        if stk.isEmpty {
            stk.append(arr[i])
        } else if let last = stk.last, arr[i] == last {
            _ = stk.popLast()
        } else {
            stk.append(arr[i])
        }
        i += 1
    }
    
    return stk.isEmpty ? [-1] : stk
}

print(solution([0, 1, 1, 1, 0])) // [0, 1, 0]
print(solution([0, 1, 0, 1, 0])) // [0, 1, 0, 1, 0]
print(solution([0, 1, 1, 0])) // [-1]
