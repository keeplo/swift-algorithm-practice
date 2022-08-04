//
//  main.swift
//  2단계/이진_변환_반복하기
//
//  Created by Yongwoo Marco on 2022/08/04.
//

// https://school.programmers.co.kr/learn/courses/30/lessons/70129

import Foundation

func solution(_ s:String) -> [Int] {
	var str = s, zeros = 0, round = 0
	
	while str != "1" {
		let removed = str.filter { $0 == "1" }.map { String($0) }.joined()
		zeros += str.count - removed.count
		round += 1
		str = String(removed.count, radix: 2)
	}
	
	return [round, zeros]
}

print(solution("110010101001")) // [3, 8]
print(solution("01110")) // [3, 3]
print(solution("1111111")) // [4, 1]
