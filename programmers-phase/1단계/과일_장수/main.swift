//
//  main.swift
//  1단계/과일_장수
//
//  Created by Yongwoo Marco on 2022/11/12.
//

// https://school.programmers.co.kr/learn/courses/30/lessons/135808

import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
	var result = 0, sorted = score.sorted(by: >)

	for K in stride(from: m - 1, to: sorted.count, by: m) {
		if sorted[K] <= k {
			result += sorted[K] * m
		}
	}
	
	return result
}

print(solution(3, 4, [1, 2, 3, 1, 2, 3, 1]))  // 8
print(solution(4, 3, [4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2]	))  // 33
