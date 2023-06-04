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

// https://www.acmicpc.net/problem/1920
// 수 찾기 1920

//readLine()!
//let a = Set(readLine()!.split(separator: " "))
//readLine()!
//
//readLine()!.split(separator: " ")
//    .forEach({
//        print(a.contains($0) ? 1 : 0)
//    })

// https://www.acmicpc.net/problem/10816
// 숫자 카드 2 10816

//var dic = [String:Int]()
//_ = readLine()!
//readLine()!.split(separator: " ").forEach {
//	let num = String($0)
//	if let value = dic[num] {
//		dic[num] = value + 1
//	} else {
//		dic.updateValue(1, forKey: num)
//	}
//}
//_ = readLine()!
//print(
//	readLine()!.split(separator: " ").compactMap {
//		if let value = dic[String($0)] {
//			return String(value)
//		} else {
//			return "0"
//		}
//	}.joined(separator: " ")
//)
