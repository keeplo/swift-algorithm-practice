//
//  main.swift
//  1단계/햄버거_만들기
//
//  Created by Yongwoo Marco on 2022/11/15.
//

// https://school.programmers.co.kr/learn/courses/30/lessons/133502#

import Foundation

func solution(_ ingredient:[Int]) -> Int {
	var result = 0, stack = [Int]()

	for i in ingredient {
		stack.append(i)
		
		if stack.count > 3,
		   stack[stack.count - 1] == 1,
		   stack[stack.count - 2] == 3,
		   stack[stack.count - 3] == 2,
		   stack[stack.count - 4] == 1 {
			stack = stack.count - 4 == 0 ? [] : Array(stack[0..<stack.count - 4])
			result += 1
		}
		
	}
	
	return result
}
print(solution([2, 1, 1, 2, 3, 1, 2, 3, 1]))  // 2
print(solution([1, 3, 2, 1, 2, 1, 3, 1, 2]))  // 0
