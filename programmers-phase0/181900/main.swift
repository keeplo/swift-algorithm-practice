//
//  main.swift
//  [181900 글자 지우기](https://school.programmers.co.kr/learn/courses/30/lessons/181900)
//
//  Created by 김용우 on 8/29/24.
//

import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    return my_string.enumerated().filter({ !indices.contains($0.offset) }).map({ String($0.element) }).joined()
}

print(solution("apporoograpemmemprs", [1, 16, 6, 15, 0, 10, 11, 3])) // "programmers"
