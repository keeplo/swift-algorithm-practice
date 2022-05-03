//
//  main.swift
//  1단계/최소직사각형
//
//  Created by Yongwoo Marco on 2021/12/01.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/86491

func solution(_ sizes:[[Int]]) -> Int {
    var widths = [Int](), height = [Int]()
    
    sizes.forEach { size in
        let sorted = size.sorted(by: >)
        widths.append(sorted[0])
        height.append(sorted[1])
    }

    return widths.max()! * height.max()!
}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))       // 4000
print(solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))  // 120
print(solution([[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]]))  // 133
