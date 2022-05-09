//
//  main.swift
//  2단계/프린터
//
//  Created by Yongwoo Marco on 2022/05/09.
//

// https://programmers.co.kr/learn/courses/30/lessons/42587

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities.enumerated().map { ($0.element, $0.offset == location) }
    var count = 0
    
    while !queue.isEmpty {
        let dequeue = queue.removeFirst()
        if queue.filter({ $0.0 > dequeue.0 }).count > 0 {
            queue.append(dequeue)
        } else {
            count += 1
            guard !dequeue.1 else { break }
        }
    }
    return count
}

print(solution([2, 1, 3, 2], 2))  // 1
print(solution([1, 1, 9, 1, 1, 1], 0))  // 5
