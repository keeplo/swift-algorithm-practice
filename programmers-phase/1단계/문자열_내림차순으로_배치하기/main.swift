//
//  main.swift
//  1단계/문자열_내림차순으로_배치하기
//
//  Created by Yongwoo Marco on 2022/05/01.
//

// https://programmers.co.kr/learn/courses/30/lessons/12917

import Foundation

func solution(_ s:String) -> String {
    return s.sorted(by: >).map {String($0)}.joined()
}

print(solution("Zbcdefg")) // "gfedcbZ"
