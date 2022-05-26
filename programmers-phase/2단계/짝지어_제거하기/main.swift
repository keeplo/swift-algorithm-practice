//
//  main.swift
//  2단계/짝지어_제거하기
//
//  Created by Yongwoo Marco on 2022/05/26.
//

// https://programmers.co.kr/learn/courses/30/lessons/12973

import Foundation

func solution(_ s:String) -> Int{
    var stack = [String.Element]()
    
    for element in s {
        if let last = stack.last, last == element {
            stack.removeLast()
        } else {
            stack.append(element)
        }
    }
    
    return stack.count > 0 ? 0 : 1
}

print(solution("baabaa"))   // 1
print(solution("cdcd"))     // 0
