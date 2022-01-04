//
//  main.swift
//  2020/intern/키패드_누르기
//
//  Created by Yongwoo Marco on 2022/01/04.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/67256
func solution(_ numbers:[Int], _ hand:String) -> String {
    let table = [
        1: (0, 3), 2: (1, 3), 3: (2, 3),
        4: (0, 2), 5: (1, 2), 6: (2, 2),
        7: (0, 1), 8: (1, 1), 9: (2, 1),
        0: (1, 0)
    ]
    var left = (0, 0), right = (2, 0)
    var result = ""
    
    func pick(_ hand: String, _ next: Int) {
        if hand == "L" {
            result.append("L")
            left = table[next]!
        } else {
            result.append("R")
            right = table[next]!
        }
    }
    
    func distanceCheck(_ now: (Int, Int), end: (Int, Int)) -> Int {
        return abs(now.0-end.0) + abs(now.1-end.1)
    }
    
    numbers.forEach { next in
        if [1, 4, 7].contains(next) {
            pick("L", next)
        } else if [3, 6, 9].contains(next) {
            pick("R", next)
        } else {
            let leftDistance = distanceCheck(left, end: table[next]!)
            let rightDistance = distanceCheck(right, end: table[next]!)
            if leftDistance > rightDistance {
                pick("R", next)
            } else if leftDistance < rightDistance {
                pick("L", next)
            } else {
                hand == "left" ? pick("L", next) : pick("R", next)
            }
        }
    }
    return result
}

print(solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5] , "right")) // "LRLLLRLLRRL"
print(solution([7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2], "left")) // "LRLLRRLLLRR"
print(solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 0], "right")) // "LLRLLRLLRL"

