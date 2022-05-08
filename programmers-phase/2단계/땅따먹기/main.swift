//
//  main.swift
//  2단계/땅따먹기
//
//  Created by Yongwoo Marco on 2022/05/08.
//

// https://programmers.co.kr/learn/courses/30/lessons/12913

import Foundation

func solution(_ land:[[Int]]) -> Int{
    var newLand = land

    for row in 1..<newLand.count {
        let index = [0, 1, 2, 3]
        for i in index {
            let f = index.filter { $0 != i }
            newLand[row][i] += max(newLand[row-1][f[0]], newLand[row-1][f[1]], newLand[row-1][f[2]])
        }
    }

    print(newLand)
    
    return newLand[land.count - 1].max()!
}

print(solution([[1,2,3,5],
                [5,6,7,8],
                [4,3,2,1]])) // 16
