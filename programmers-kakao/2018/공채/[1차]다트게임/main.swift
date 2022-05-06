//
//  main.swift
//  2018/공채/[1차]다트게임
//
//  Created by Yongwoo Marco on 2022/05/06.
//

// https://programmers.co.kr/learn/courses/30/lessons/17682

import Foundation

func solution(_ dartResult:String) -> Int {
    let numbers = dartResult.split(whereSeparator: { $0.isLetter||$0=="*"||$0=="#" })
    let letters = dartResult.split(whereSeparator: { $0.isNumber })
        
    var result = numbers.compactMap { Int($0) }
    
    for (index, letter) in letters.enumerated() {
        for char in letter {
            switch char {
            case "D": result[index] *= result[index]
            case "T": result[index] *= result[index] * result[index]
            case "#": result[index] *= -1
            case "*":
                if index > 0 { result[index - 1] *= 2 }
                result[index] *= 2
            default: break
            }
        }
    }
    
    return result.reduce(0, +)
}

print(solution("1S2D*3T"))  // 37
print(solution("1D2S#10S")) // 9
print(solution("1D2S0T"))   // 3
print(solution("1S*2T*3S")) // 23
print(solution("1D#2S*3S")) // 5
print(solution("1T2D3D#"))  // -4
print(solution("1D2S3T*"))  // 59
