//
//  main.swift
//  1단계/행렬의_덧셈
//
//  Created by Yongwoo Marco on 2022/04/18.
//

// https://programmers.co.kr/learn/courses/30/lessons/12950


// Xcode 13 swift 5.6
//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    return (0..<arr1.count).map { row in
//        (0..<arr1[row].count).map { column in
//            arr1[row][column] + arr2[row][column]
//        }
//    }
//}

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let row = arr1.count, column = arr1[0].count
    var result = [[Int]](repeating: [Int](repeating: 0, count: column), count: row)
    
    for r in 0..<row {
        for c in 0..<column {
            result[r][c] = arr1[r][c] + arr2[r][c]
        }
    }
    
    return result
}

print(solution([[1,2],[2,3]], [[3,4],[5,6]])) // [[4,6],[7,9]]
print(solution([[1],[2]], [[3],[4]])) // [[4],[6]]
      
    
