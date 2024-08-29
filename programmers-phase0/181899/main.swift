//
//  main.swift
//  [181899 카운트 다운](https://school.programmers.co.kr/learn/courses/30/lessons/181899)
//
//  Created by 김용우 on 8/29/24.
//

import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    return (end_num...start_num).reversed()
}

print(solution(10, 3)) // [10, 9, 8, 7, 6, 5, 4, 3]
