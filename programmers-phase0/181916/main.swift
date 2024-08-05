//
//  main.swift
//  [181916 주사위 게임 3](https://school.programmers.co.kr/learn/courses/30/lessons/181916)
//
//  Created by 김용우 on 8/6/24.
//

import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    let array = [a, b, c, d]
    let set = Set(array)
    switch set.count {
        case 4:                 
            return min(min(a, b), min(c, d))
            
        case 3:
            let qr = array.filter({ num in array.filter({ num == $0 }).count == 1 })
            return qr.reduce(1, *)
            
        case 2:
            let twotwo = set.filter({ num in array.filter({ num == $0 }).count == 2 })
            if twotwo.count == 2 {
                let two = Array(twotwo)
                return (two[0] + two[1]) * abs(two[0] - two[1])
            } else {
                let common = set.filter({ num in array.filter({ num == $0 }).count == 3 }).first!
                let only = set.filter({ $0 != common }).first!
                return (10 * common + only) * (10 * common + only)
            }

        case 1:                 
            return 1111 * a
            
        default:                
            return 0
    }
}

print(solution(2, 2, 2, 2))     // 2222
print(solution(4, 1, 4, 4))     // 1681
print(solution(6, 3, 3, 6))     // 27
print(solution(2, 5, 2, 6))     // 30
print(solution(6, 4, 2, 4))     // 2
