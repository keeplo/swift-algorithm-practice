//
//  main.swift
//  [181921 배열 만들기 2](https://school.programmers.co.kr/learn/courses/30/lessons/181921)
//
//  Created by 김용우 on 8/7/24.
//

import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    let filtered = (l...r).filter({ "\($0)".filter({ "50".contains(String($0))  }).count == "\($0)".count })
    return filtered.isEmpty ? [-1] : filtered
}

print(solution(5, 555)) // [5, 50, 55, 500, 505, 550, 555]
print(solution(10, 20)) // [-1]
