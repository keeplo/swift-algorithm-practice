//
//  main.swift
//  [181922 수열과 구간 쿼리 4](https://school.programmers.co.kr/learn/courses/30/lessons/181922)
//
//  Created by 김용우 on 7/25/24.
//

import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var array = arr
    
    for query in queries {
        for i in (query[0]...query[1]) {
            let result = Double(i) / Double(query[2])
            if result == Double(Int(result)) {
                array[i] += 1
            }
        }
    }
    
    return array
}

print(solution([0, 1, 2, 4, 3], [[0, 4, 1],[0, 3, 2],[0, 3, 3]]))   // [3, 2, 4, 6, 4]
