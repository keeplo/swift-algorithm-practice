//
//  main.swift
//  [181907 문자열의 앞의 n글자](https://school.programmers.co.kr/learn/courses/30/lessons/181907)
//
//  Created by 김용우 on 8/20/24.
//

import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return (0..<n).map({ String(Array(my_string)[$0]) }).joined()
}

print(solution("ProgrammerS123", 11))   // "ProgrammerS"
print(solution("He110W0r1d", 5))        // "He110"
