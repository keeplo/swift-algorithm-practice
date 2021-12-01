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
        if size[0] > size[1] {
            widths.append(size[0])
            height.append(size[1])
        } else {
            widths.append(size[1])
            height.append(size[0])
        }
    }

    return widths.max()! * height.max()!
}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))
print(solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))
print(solution([[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]]))
