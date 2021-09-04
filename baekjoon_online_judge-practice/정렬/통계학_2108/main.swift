//
//  main.swift
//  정렬/통계학_2108
//
//  Created by Yongwoo Marco on 2021/09/03.
//

// https://www.acmicpc.net/problem/2108

import Foundation

let caseCount = Int(readLine()!)!
var nums = [Int:Int](), sortedNums = [Int]()

for _ in 0..<caseCount {
    let inputNum = Int(readLine()!)!
    if !nums.keys.contains(inputNum) {
        nums.updateValue(1, forKey: inputNum)
    } else {
        nums[inputNum]? += 1
    }
}

nums.sorted(by: { $0.key < $1.key }).forEach { element in
    for _ in 0..<element.value {
        sortedNums.append(element.key)
    }
}

let sum = sortedNums.reduce(0, +)
print(String(format: "%.0f", Double(sum)/Double(caseCount)))
print(sortedNums[sortedNums.count/2])
let sorted = nums.filter{ $0.value == nums.values.max()! }.sorted(by: { $0.key < $1.key })
print(sorted.count < 2 ? sorted[0].key : sorted[1].key)
print(sortedNums[sortedNums.count-1] - sortedNums[0])
