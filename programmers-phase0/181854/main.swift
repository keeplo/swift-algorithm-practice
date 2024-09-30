//
//  main.swift
//  [181854 배열의 길이에 따른 다른 연산하기](https://school.programmers.co.kr/learn/courses/30/lessons/181854)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    if arr.count % 2 == 1 {
        return arr.enumerated().map({ $0.offset % 2 == 0 ? $0.element + n : $0.element })
    } else {
        return arr.enumerated().map({ $0.offset % 2 == 1 ? $0.element + n : $0.element })
    }
}

print(solution([49, 12, 100, 276, 33], 27)) // [76, 12, 127, 276, 60]
print(solution([444, 555, 666, 777], 100)) // [444, 655, 666, 877]
