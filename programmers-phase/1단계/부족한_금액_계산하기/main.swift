//
//  main.swift
//  1단계/부족한_금액_계산하기
//
//  Created by Yongwoo Marco on 2021/12/01.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/82612

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let sum = Int64((1...count).reduce(0) { $0 + $1 * price })
    let answer = sum - Int64(money)
    return answer < 0 ? 0 : answer
}

print(solution(3, 20, 4)) // 10
