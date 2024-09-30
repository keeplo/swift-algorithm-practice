//
//  main.swift
//  [181837 커피 심부름](https://school.programmers.co.kr/learn/courses/30/lessons/181837)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ order:[String]) -> Int {
    return order.map({
        switch $0 {
            case "iceamericano", "americanoice", "hotamericano", "americanohot", "americano", "anything":
                return 4500
            default:
                return 5000
        }
    }).reduce(0, +)
}

print(solution(["cafelatte", "americanoice", "hotcafelatte", "anything"])) // 19000
print(solution(["americanoice", "americano", "iceamericano"])) // 13500
