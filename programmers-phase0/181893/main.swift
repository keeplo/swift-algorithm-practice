//
//  main.swift
//  [181893 배열 조각하기](https://school.programmers.co.kr/learn/courses/30/lessons/181893)
//
//  Created by 김용우 on 9/4/24.
//

import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var array = arr
    for index in query.indices {
        if index % 2 == 0 {
            array = Array(array[0...query[index]])
        } else {
            array = Array(array[query[index]..<array.count])
        }
      }
    return array
}

print(solution([0, 1, 2, 3, 4, 5], [4, 1, 2])) // [1, 2, 3]
