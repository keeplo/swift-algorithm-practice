//
//  main.swift
//  [181927-마지막 두 원소](https://school.programmers.co.kr/learn/courses/30/lessons/181927)
//
//  Created by 김용우 on 7/23/24.
//

import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let last = num_list[num_list.count - 1]
    let beforLast = num_list[num_list.count - 2]
    let lastNum = last > beforLast ? last - beforLast : last * 2
    return num_list + [lastNum]
}

print(solution([2, 1, 6]))      // [2, 1, 6, 5]
print(solution([5, 2, 1, 7, 5]))    // [5, 2, 1, 7, 5, 10]
