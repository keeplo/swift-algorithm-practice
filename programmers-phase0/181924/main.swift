//
//  main.swift
//  [181924 수열과 구간 쿼리 3](https://school.programmers.co.kr/learn/courses/30/lessons/181924)
//
//  Created by 김용우 on 7/25/24.
//

import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var array = arr
    
    for query in queries {
        let (firstIndex, lastIndex) = (query[0], query[1])
        array.swapAt(firstIndex, lastIndex)
    }
    
    return array
}

print(solution([0, 1, 2, 3, 4], [[0, 3],[1, 2],[1, 4]]))   // [3, 4, 1, 0, 2]
