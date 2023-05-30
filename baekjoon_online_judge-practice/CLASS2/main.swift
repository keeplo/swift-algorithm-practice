//
//  main.swift
//  CLASS2
//
//  Created by 김용우 on 2023/05/30.
//

// https://www.acmicpc.net/problem/10989
// 수 정렬하기 3 10989

//let count = Int(readLine()!)!
//var sorted: [Int] = .init(repeating: 0, count: 10_001)
//
//for _ in 0..<count {
//    let num = Int(readLine()!)!
//    sorted[num] += 1
//}
//
//var result = ""
//for index in 0..<sorted.count {
//    if sorted[index] > 0 {
//        result += String(repeating: "\(index)\n", count: sorted[index])
//    }
//}
//print(result)

// https://www.acmicpc.net/problem/4153
// * 직각삼각형 4153

//var nums: [Int] = [1]
//
//repeat {
//    nums = readLine()!.split(separator: " ")
//        .compactMap({ Int(String($0)) })
//        .sorted(by: <)
//    if nums.reduce(0, +) != 0 {
//        print(nums[0]*nums[0] + nums[1]*nums[1] == nums[2]*nums[2] ? "right" : "wrong")
//    }
//} while (nums.reduce(0, +) != 0)
