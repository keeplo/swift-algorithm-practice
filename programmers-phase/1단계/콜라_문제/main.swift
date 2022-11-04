//
//  main.swift
//  1단계/콜라_문제
//
//  Created by Yongwoo Marco on 2022/11/05.
//

// https://school.programmers.co.kr/learn/courses/30/lessons/132267

import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
	var result = 0, now = n
	while now >= a {
		let new = (now / a) * b
		result += new
		now = (now % a) + new
		print("now \(now) now > a \(now > a) result \(result)")
	}
	return result
}

print(solution(2, 1, 20)) // 19
print(solution(3, 1, 20)) // 9
