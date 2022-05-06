//
//  main.swift
//  2019/공채/실패율
//
//  Created by Yongwoo Marco on 2022/05/06.
//

// https://programmers.co.kr/learn/courses/30/lessons/42889

import Foundation

/* 시간초과
func solution(_ n: Int, _ stages: [Int]) -> [Int] {
    var rates = [Int:Double]()
    
    for stage in 1...n {
        let triedStageCount = stages.filter({ i<=$0 }).count
        let failedStageCount = stages.filter({ i==$0 }).count
 
        let rate = Double(failedStageCount)/Double(triedStageCount)
        rates.updateValue(rate, forKey: stage)
    }

    let result = rates.sorted(by: <).sorted(by: {$0.value > $1.value}).map({$0.key})
    
    return result
}
*/

func solution(_ n: Int, _ stages: [Int]) -> [Int] {
    var tries = Array(repeating: 0, count: n + 1)

    for lastStage in stages {
        for stage in 0..<lastStage {
            tries[stage] += 1
        }
    }

    var result = [Int:Double]()
    for i in 0..<n {
        result.updateValue(Double(tries[i] - tries[i + 1]) / Double(tries[i]), forKey: i + 1)
    }

    return result.sorted(by: <).sorted(by: {$0.value > $1.value}).map({ $0.key })
}

print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3])) // [3,4,2,1,5]
print(solution(4, [4,4,4,4,4]))              // [4,1,2,3]

