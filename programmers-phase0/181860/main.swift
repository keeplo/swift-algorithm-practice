//
//  main.swift
//  [181860 빈 배열에 추가, 삭제하기](https://school.programmers.co.kr/learn/courses/30/lessons/181860)
//
//  Created by 김용우 on 9/19/24.
//

import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var x = [Int]()
    for index in (0..<flag.count) {
        if flag[index] {
            x += [Int](repeating: arr[index], count: arr[index] * 2)
        } else {
            x.removeLast(arr[index])
        }
    }
    
    return x
}

print(solution([3, 2, 4, 1, 3], [true, false, true, false, false])) // [3, 3, 3, 3, 4, 4, 4, 4]
