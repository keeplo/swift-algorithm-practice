//
//  main.swift
//  [181862 세 개의 구분자](https://school.programmers.co.kr/learn/courses/30/lessons/181862)
//
//  Created by 김용우 on 9/19/24.
//

import Foundation

func solution(_ myStr:String) -> [String] {
    let result = myStr
        .replacingOccurrences(of: "a", with: " ")
        .replacingOccurrences(of: "b", with: " ")
        .replacingOccurrences(of: "c", with: " ")
        .components(separatedBy: " ")
        .filter({ !$0.isEmpty })
    return result.isEmpty ? ["EMPTY"] : result
}

print(solution("baconlettucetomato")) // ["onlettu", "etom", "to"]
print(solution("abcd")) // ["d"]
print(solution("cabab")) // ["EMPTY"]
