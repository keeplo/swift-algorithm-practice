//
//  main.swift
//  1단계/로또의_최고_순위와_최저_순위
//
//  Created by Yongwoo Marco on 2021/12/02.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/77484
func solution(_ lottos: [Int], _ win_nums: [Int]) -> [Int] {
    let zero = lottos.filter{ $0 == 0 }.count
    let match = lottos.filter{ win_nums.contains($0) }.count
 
    return [match+zero, match].map({ $0 <= 1 ? 6 : 7-$0 })
}


print(solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]))
print(solution([0, 0, 0, 0, 0, 0], [38, 19, 20, 40, 15, 25]))
print(solution([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35]))
