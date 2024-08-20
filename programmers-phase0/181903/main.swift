//
//  main.swift
//  [181903 qr code](https://school.programmers.co.kr/learn/courses/30/lessons/181903)
//
//  Created by 김용우 on 8/20/24.
//

import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    return (0..<code.count).filter({ $0 % q == r }).map({ String(Array(code)[$0]) }).joined()
}

print(solution(3, 1, "qjnwezgrpirldywt"))   // "jerry"
print(solution(1, 0, "programmers"))        // "programmers"
