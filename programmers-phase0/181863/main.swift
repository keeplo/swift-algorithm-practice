//
//  main.swift
//  [181863 rny_string](https://school.programmers.co.kr/learn/courses/30/lessons/181863)
//
//  Created by 김용우 on 9/17/24.
//

import Foundation

func solution(_ rny_string:String) -> String {
    return rny_string.replacingOccurrences(of: "m", with: "rn")
}

print(solution("masterpiece")) // "rnasterpiece"
print(solution("programmers")) // "prograrnrners"
print(solution("jerry")) // "jerry"
print(solution("burn")) // "burn"
