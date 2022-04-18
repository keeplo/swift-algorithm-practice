//
//  main.swift
//  1단계/직사각형_별찍기
//
//  Created by Yongwoo Marco on 2022/04/18.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12969

let edges = readLine()!.components(separatedBy: [" "]).compactMap { Int($0) }
let matrix = [[String]](repeating: [String](repeating: "*", count: edges[0]), count: edges[1])

for line in matrix {
    print(line.joined())
}
