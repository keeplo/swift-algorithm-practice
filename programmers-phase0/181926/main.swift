//
//  main.swift
//  [181926 수 조작하기1](https://school.programmers.co.kr/learn/courses/30/lessons/181926)
//
//  Created by 김용우 on 7/23/24.
//

import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    return n + control.reduce(0) {
        switch String($1) {
            case "w":   return $0 + 1
            case "s":   return $0 - 1
            case "d":   return $0 + 10
            case "a":   return $0 - 10
            default:    return $0
        }
    }
}

print(solution(0, "wsdawsdassw"))   // -1
