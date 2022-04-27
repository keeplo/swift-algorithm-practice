//
//  main.swift
//  1단계/이상한_문자_만들기
//
//  Created by Yongwoo Marco on 2022/04/27.
//

// https://programmers.co.kr/learn/courses/30/lessons/12930

import Foundation

func solution(_ s:String) -> String {
    return s.components(separatedBy: " ").map{ separatedString in
        return separatedString.enumerated().map { index, element in
            return index % 2 == 0 ? element.uppercased() : element.lowercased()}.joined()
        }.joined(separator: " ")
}

print(solution("try hello world")) // "TrY HeLlO WoRlD"
    
