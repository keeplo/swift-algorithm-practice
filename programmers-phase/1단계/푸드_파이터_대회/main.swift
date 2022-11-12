//
//  main.swift
//  1단계/푸드_파이터_대회
//
//  Created by Yongwoo Marco on 2022/11/12.
//

// https://school.programmers.co.kr/learn/courses/30/lessons/134240

import Foundation

func solution(_ food:[Int]) -> String {
	let assigned = Array(food[1..<food.count])
		.enumerated().map({ ($0.element / 2, $0.offset + 1) })
	var result = ""
	
	for track in [assigned, [(1, 0)], assigned.reversed()] {
		for tuple in track {
			result += [String](repeating: "\(tuple.1)", count: tuple.0).joined()
		}
	}
	
	return result
}

print(solution([1, 3, 4, 6]))	// "1223330333221"
print(solution([1, 7, 1, 2]))	// "111303111"
