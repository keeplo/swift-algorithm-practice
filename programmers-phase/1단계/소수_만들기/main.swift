//
//  main.swift
//  1단계/소수_만들기
//
//  Created by Yongwoo Marco on 2022/01/19.
//

// https://programmers.co.kr/learn/courses/30/lessons/12977

import Foundation

func solution(_ nums:[Int]) -> Int {
    func isPrime(num: Int) -> Bool {
        guard num > 3 else { return num == 1 ? false : true }
        for i in 2...Int(sqrt(Double(num))) {
            if(num % i == 0) { return false }
        }
        return true
    }

    var result = 0
    func combination(_ arr: [Int], size: Int, current index: Int, selected: [Int]) {
        if size == 0 {
            if isPrime(num: selected.reduce(0, +)) {
                result += 1
            }
        } else if index == arr.count {
            return
        } else {
            var newSelected = selected
            newSelected.append(arr[index])
            combination(arr, size: size - 1, current: index + 1, selected: newSelected)
            combination(arr, size: size, current: index + 1, selected: selected)
        }
    }

    combination(nums, size: 3, current: 0, selected: [])
   
    return result
}

print(solution([1,2,3]))     // 0
print(solution([1,2,3,4]))   // 1
print(solution([1,2,7,6,4])) // 4
