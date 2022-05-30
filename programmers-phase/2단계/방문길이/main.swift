//
//  main.swift
//  2단계/방문길이
//
//  Created by Yongwoo Marco on 2022/05/30.
//

// https://programmers.co.kr/learn/courses/30/lessons/49994

import Foundation

func solution(_ dirs:String) -> Int {
    let directions = ["U":(1, 0), "D":(-1,0), "R":(0, 1), "L":(0, -1)] // (y, x)
    var past = [(Int, Int, Int, Int)](), now = (0, 0), bound = (-5...5)
    
    for direction in dirs {
        let plus = directions[String(direction)]!
                
        let nextY = now.0 + plus.0
        let nextX = now.1 + plus.1
        
        if bound ~= nextX, bound ~= nextY {
            if !past.contains(where: { $0 == (now.0, now.1, nextY, nextX) || $0 == (nextY, nextX, now.0, now.1) }) {
                past.append( (now.0, now.1, nextY, nextX) )
            }
            now = (nextY, nextX)
        }
    }
    
    return past.count
}

print(solution("ULURRDLLU"))  // 7
print(solution("LULLLLLLU"))  // 7
