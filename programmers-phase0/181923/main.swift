//
//  main.swift
//  [181923 수열과 구간 쿼리 2](https://school.programmers.co.kr/learn/courses/30/lessons/181923)
//
//  Created by 김용우 on 7/25/24.
//

import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    let max = 1000000
    return queries.map { query in
        let minimun = (query[0]...query[1]).reduce(max) {
            if arr[$1] > query[2] {
                return min($0, arr[$1])
            } else {
                return $0
            }
        }
        return minimun == max ? -1 : minimun
    }
}

print(solution([0, 1, 2, 4, 3], [[0, 4, 2], [0, 3, 2], [0, 2, 2]]))  // [3, 4, -1]
