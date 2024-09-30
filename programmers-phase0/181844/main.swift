//
//  main.swift
//  [181844 배열의 원소 삭제하기](https://school.programmers.co.kr/learn/courses/30/lessons/181844)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    return arr.filter({ !delete_list.contains($0) })
}

print(solution([293, 1000, 395, 678, 94], [94, 777, 104, 1000, 1, 12])) // [293, 395, 678]
print(solution([110, 66, 439, 785, 1], [377, 823, 119, 43])) // [110, 66, 439, 785, 1]
