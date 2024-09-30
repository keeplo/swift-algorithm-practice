//
//  main.swift
//  [181848 문자열을 정수로 변환하기](https://school.programmers.co.kr/learn/courses/30/lessons/181848)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ n_str:String) -> Int {
    return Int(n_str.filter({ $0.isNumber }).map({ String($0) }).joined())!
}

print(solution("10")) // 10
print(solution("8542")) // 8542
