//
//  main.swift
//  1단계/삼총사
//
//  Created by Yongwoo Marco on 2022/11/12.
//

// https://school.programmers.co.kr/learn/courses/30/lessons/131705

import Foundation

func solution(_ number:[Int]) -> Int {
	var result = 0
	
	for first in 0..<number.count - 2 {
		for second in (first+1)..<number.count {
			for third in (second+1)..<number.count {
				if number[first] + number[second] + number[third] == 0 {
					result += 1
				}
			}
		}
	}
	
	return result
}

print(solution([-2, 3, 0, 2, -5]))		 	// 2
print(solution([-3, -2, -1, 0, 1, 2, 3]))	// 5
print(solution([-1, 1, -1, 1]))				// 0
