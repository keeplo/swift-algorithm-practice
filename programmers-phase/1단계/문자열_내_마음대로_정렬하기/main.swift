//
//  main.swift
//  1단계/문자열_내_마음대로_정렬하기
//
//  Created by Yongwoo Marco on 2022/05/01.
//

// https://programmers.co.kr/learn/courses/30/lessons/12915

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted { lhs, rhs in
        let lhsChar = lhs[lhs.index(lhs.startIndex, offsetBy: n)]
        let rhsChar = rhs[rhs.index(rhs.startIndex, offsetBy: n)]
        return lhsChar == rhsChar ? lhs < rhs : lhsChar < rhsChar
    }
}

print(solution(["sun", "bed", "car"], 1)) // ["car", "bed", "sun"]
print(solution(["abce", "abcd", "cdx"], 2)) // ["abcd", "abce", "cdx"]
