//
//  main.swift
//  [181873 특정한 문자를 대문자로 바꾸기](https://school.programmers.co.kr/learn/courses/30/lessons/181873)
//
//  Created by 김용우 on 8/9/24.
//

import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    return my_string.map({
        let str = String($0)
        return alp == str ? "\($0.uppercased())" : str
    })
    .joined()
}

print(solution("programmers", "p")) // "Programmers"
print(solution("lowercase", "x"))   // "lowercase"
