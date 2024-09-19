//
//  main.swift
//  [181858 무작위로 K개의 수 뽑기](https://school.programmers.co.kr/learn/courses/30/lessons/181858)
//
//  Created by 김용우 on 9/19/24.
//

import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var picked = [Int](), index = 0
    
    while picked.count < k {
        if index < arr.count, !picked.contains(arr[index]) {
            picked.append(arr[index])
        } else if index < arr.count, picked.contains(arr[index]) || arr[index] == -1 {
            
        } else {
            picked.append(-1)
        }
        index += 1
    }
    
    return picked
}

print(solution([0, 1, 1, 2, 2, 3], 3)) // [0, 1, 2]
print(solution([0, 1, 1, 1, 1], 4)) // [0, 1, -1, -1]
