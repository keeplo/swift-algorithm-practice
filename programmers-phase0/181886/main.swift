//
//  main.swift
//  [181886 5명씩](https://school.programmers.co.kr/learn/courses/30/lessons/181886)
//
//  Created by 김용우 on 9/6/24.
//

import Foundation

func solution(_ names:[String]) -> [String] {
   return names.enumerated().filter { $0.offset % 5 == 0 }.map(\.element)
}

print(solution(["nami", "ahri", "jayce", "garen", "ivern", "vex", "jinx"])) // ["nami", "vex"]
