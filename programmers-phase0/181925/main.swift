//
//  main.swift
//  [181925 수 조작하기 2](https://school.programmers.co.kr/learn/courses/30/lessons/181925)
//
//  Created by 김용우 on 7/25/24.
//

import Foundation

func solution(_ numLog:[Int]) -> String {
    guard var num = numLog.first else { return "" }
    
    return numLog.reduce("") { last, current in
        defer {
            num = current
        }
        switch current - num {
            case 1:     return last + "w"
            case -1:    return last + "s"
            case 10:    return last + "d"
            case -10:   return last + "a"
            default:    return last + ""
        }
    }
}

print(solution([0, 1, 0, 10, 0, 1, 0, 10, 0, -1, -2, -1]))  // "wsdawsdassw"
