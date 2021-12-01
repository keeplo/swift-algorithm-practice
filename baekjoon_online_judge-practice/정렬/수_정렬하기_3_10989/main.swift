//
//  main.swift
//  정렬/수_정렬하기_3_10989
//
//  Created by Yongwoo Marco on 2021/09/03.
//

// https://www.acmicpc.net/problem/10989

let caseCount = Int(readLine()!)!
var nums = [Int](repeating: 0, count: 10000)

for _ in 0..<caseCount {
    let input = Int(readLine()!)!
    nums[input-1] += 1
}

nums.enumerated().forEach { number in
    if number.element > 0 {
        for _ in 0..<number.element {
            print(number.offset + 1)
        }
    }
}
