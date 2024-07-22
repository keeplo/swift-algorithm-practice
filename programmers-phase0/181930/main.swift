//
//  main.swift
//  [181930-주사위 게임2](https://school.programmers.co.kr/learn/courses/30/lessons/181930)
//
//  Created by 김용우 on 7/23/24.
//

import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    let list = [Double(a), Double(b), Double(c)]
    let duplicateCount = Set(list).count
        
    return (1...(4 - duplicateCount)).reduce(1) { base, last in
        base * list.reduce(0) { $0 + Int(pow($1, Double(last))) }
    }
}

print(solution(2, 6, 1))    // 9
print(solution(5, 3, 3))    // 473
print(solution(4, 4, 4))    // 110592
