//
//  main.swift
//  2단계/행렬의_곱셈
//
//  Created by Yongwoo Marco on 2022/05/08.
//

// https://programmers.co.kr/learn/courses/30/lessons/12949

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return arr1.enumerated().map { (index, row) in
        var newRow = [Int]()
        for columnIndex in 0..<arr2[0].count {
            let column = (0..<arr2.count).map { arr2[$0][columnIndex] }
            let element = zip(row, column).reduce(0) { $0 + $1.0 * $1.1 }
            newRow.append(element)
        }
        return newRow
    }
}

print(solution([[1, 4], [3, 2], [4, 1]], [[3, 3], [3, 3]]))
// [[15, 15], [15, 15], [15, 15]]
print(solution([[2, 3, 2], [4, 2, 4], [3, 1, 4]], [[5, 4, 3], [2, 4, 1], [3, 1, 1]]))
// [[22, 22, 11], [36, 28, 18], [29, 20, 14]]

       
        
