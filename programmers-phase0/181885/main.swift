//
//  main.swift
//  [181885 할 일 목록](https://school.programmers.co.kr/learn/courses/30/lessons/181885)
//
//  Created by 김용우 on 9/6/24.
//

import Foundation

func solution(_ todo_list:[String], _ finished:[Bool]) -> [String] {
   return (0..<finished.count).filter { !finished[$0] }.map { todo_list[$0] }
}

print(solution(["problemsolving", "practiceguitar", "swim", "studygraph"], [true, false, true, false])) // ["practiceguitar", "studygraph"]
