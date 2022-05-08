//
//  main.swift
//  1단계/모의고사
//
//  Created by Yongwoo Marco on 2022/05/08.
//

// https://programmers.co.kr/learn/courses/30/lessons/42840

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var students = [1:0, 2:0, 3:0]
    let first = [1, 2, 3, 4, 5]
    let second = [2, 1, 2, 3, 2, 4, 2, 5]
    let third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    answers.enumerated().forEach { (index, element) in
        if( element == first[ index % 5])  { students[1]! += 1 }
        if( element == second[index % 8])  { students[2]! += 1 }
        if( element == third[ index % 10]) { students[3]! += 1 }
    }
        
    let max = students.values.max()!
    return students.filter { $0.value == max }.sorted(by: <).map { $0.key }
}

print(solution([1,2,3,4,5])) // [1]
print(solution([1,3,2,4,2])) // [1,2,3]
   
