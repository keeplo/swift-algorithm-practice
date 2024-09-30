//
//  main.swift
//  [181830 정사각형으로 만들기](https://school.programmers.co.kr/learn/courses/30/lessons/181830)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    let rowCount = arr.count
    let columnCount = arr[0].count
    
    let count = abs(rowCount - columnCount)
    
    if rowCount > columnCount {
        return arr.map({
            return $0 + [Int](repeating: 0, count: count)
        })
    } else if rowCount < columnCount {
        return arr + [[Int]](repeating: .init(repeating: 0, count: columnCount), count: count)
    } else {
        return arr
    }
}

print(solution([[572, 22, 37], [287, 726, 384], [85, 137, 292], [487, 13, 876]])) // [[572, 22, 37, 0], [287, 726, 384, 0], [85, 137, 292, 0], [487, 13, 876, 0]]
print(solution([[57, 192, 534, 2], [9, 345, 192, 999]])) // [[57, 192, 534, 2], [9, 345, 192, 999], [0, 0, 0, 0], [0, 0, 0, 0]]
print(solution([[1, 2], [3, 4]])) // [[1, 2], [3, 4]]
