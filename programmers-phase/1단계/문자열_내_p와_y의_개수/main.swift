//
//  main.swift
//  1단계/문자열_내_p와_y의_개수
//
//  Created by Yongwoo Marco on 2022/05/01.
//

// https://programmers.co.kr/learn/courses/30/lessons/12916

import Foundation

func solution(_ s:String) -> Bool {
    let lower = s.lowercased()
    return lower.filter { $0 == "p" }.count == lower.filter { $0 == "y" }.count
}

print(solution("pPoooyY")) // true
print(solution("Pyy")) // false
