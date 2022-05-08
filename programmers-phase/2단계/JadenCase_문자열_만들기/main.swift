//
//  main.swift
//  2단계/JadenCase_문자열_만들기
//
//  Created by Yongwoo Marco on 2022/05/08.
//

// https://programmers.co.kr/learn/courses/30/lessons/12951

import Foundation

func solution(_ s:String) -> String {
    return s.components(separatedBy: " ").map { str in
        return str.enumerated().map { (index, char) in
            if index == 0 {
                return char.isLetter ? String(char.uppercased()) : String(char)
            } else {
                return String(char.lowercased())
        }
    }.joined() }.joined(separator: " ")
}

print(solution("3people unFollowed me")) // "3people Unfollowed Me"
print(solution("for the last week"))     // "For The Last Week"
