//
//  main.swift
//  [181851 전국 대회 선발 고사](https://school.programmers.co.kr/learn/courses/30/lessons/181851)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    var rankers = [Int]()
    
    for index in (0..<rank.count) {
        if let number = rank.firstIndex(of: index + 1) {
            rankers.append(number)
        }
    }
    
    let filtered = rankers.filter({ attendance[$0] })
    
    return 10000 * filtered[0] + 100 * filtered[1] + filtered[2]
}

print(solution([3, 7, 2, 5, 4, 6, 1], [false, true, true, true, true, false, false])) // 20403
print(solution([1, 2, 3], [true, true, true])) // 102
print(solution([6, 1, 5, 2, 3, 4], [true, false, true, false, false, true])) // 50200
