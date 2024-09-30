//
//  main.swift
//  [181857 배열의 길이를 2의 거듭제곱으로 만들기](https://school.programmers.co.kr/learn/courses/30/lessons/181857)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var last = 1
    
    while last < arr.count {
        last *= 2
    }
    print(last)
    return arr + [Int](repeating: 0, count: last - arr.count)
}

print(solution([1, 2, 3, 4, 5, 6])) // [1, 2, 3, 4, 5, 6, 0, 0]
print(solution([58, 172, 746, 89])) // [58, 172, 746, 89]
