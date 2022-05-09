//
//  main.swift
//  2단계/기능개발
//
//  Created by Yongwoo Marco on 2022/05/09.
//

// https://programmers.co.kr/learn/courses/30/lessons/42586

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var p = progresses, s = speeds
    var result = [Int]()
    
    while !p.isEmpty {
        p.enumerated().forEach { index, _ in
            p[index] += speeds[index]
        }
        
        var count = 0
        for value in p {
            if value >= 100 {
                count += 1
                p.remove(at: 0)
                s.remove(at: 0)
            } else {
                break
            }
        }
        if count > 0 {
            result.append(count)
        }
    }
    
    return result
}

print(solution([93, 30, 55], [1, 30, 5])) // [2, 1]
print(solution([95, 90, 99, 99, 80, 99], [1, 1, 1, 1, 1, 1]))  // [1, 3, 2]
