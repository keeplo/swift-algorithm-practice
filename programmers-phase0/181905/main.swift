//
//  main.swift
//  [181905 문자열 뒤집기](https://school.programmers.co.kr/learn/courses/30/lessons/181905)
//
//  Created by 김용우 on 8/20/24.
//

import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    let subString = String(Array(my_string)[s...e])
    return my_string.replacingOccurrences(of: subString, with: String(subString.reversed()))
}

print(solution("Progra21Sremm3", 6, 12))    // "ProgrammerS123"
print(solution("Stanley1yelnatS", 4, 10))   // "Stanley1yelnatS"
