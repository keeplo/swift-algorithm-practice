//
//  main.swift
//  2단계/올바른_괄호
//
//  Created by Yongwoo Marco on 2022/05/08.
//

// https://programmers.co.kr/learn/courses/30/lessons/12909

import Foundation

func solution(_ s:String) -> Bool {
    var stack = [Character]()

    for char in s {
        if char == Character("(") {
            stack.append(char)
        } else if stack.popLast() == nil {
            return false
        }
    }

    return stack.count > 0 ? false : true
}

print(solution("()()")) // true
print(solution("(())()")) // true
print(solution(")()(")) // false
print(solution("(()(")) // false
