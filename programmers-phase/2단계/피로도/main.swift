//
//  main.swift
//  2단계/피로도
//
//  Created by Yongwoo Marco on 2022/05/17.
//

// https://programmers.co.kr/learn/courses/30/lessons/87946

import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var results = Set<Int>()

    func next(k: Int, left: [[Int]]) {
        guard k > 0 else {
            results.update(with: dungeons.count - left.count )
            return
        }
        guard left.filter({ k >= $0[1] }).count > 0 else {
            results.update(with: dungeons.count - left.count )
            return
        }
                
        for (index, dungeon) in left.enumerated() {
            if k >= dungeon[0], k - dungeon[1] >= 0 {
                var l = left
                l.remove(at: index)
                next(k: k - dungeon[1] , left: l)
            }
        }
        results.update(with: dungeons.count - left.count)
    }
    
    next(k: k, left: dungeons)
    
    return results.max() ?? 0
}

print(solution(80, [[80,20],[50,40],[30,10]])) // 3
