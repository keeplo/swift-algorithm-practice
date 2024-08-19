//
//  main.swift
//  [181910 문자열의 뒤의 n글자](https://school.programmers.co.kr/learn/courses/30/lessons/181910)
//
//  Created by 김용우 on 8/19/24.
//

import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return Array(my_string)[(my_string.count - n)..<my_string.count].map({ String($0) }).joined()
}

print(solution("ProgrammerS123", 11))   // "grammerS123"
print(solution("He110W0r1d", 5))        // "W0r1d"
