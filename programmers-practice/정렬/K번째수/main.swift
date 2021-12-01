//
//  main.swift
//  정렬/K번째수
//
//  Created by Yongwoo Marco on 2021/09/22.
//

// https://programmers.co.kr/learn/courses/30/lessons/42748

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map({ array[$0[0]-1...$0[1]-1].sorted(by: < )[$0[2]-1] })
}
