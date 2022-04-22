//
//  main.swift
//  1단계/핸드폰_번호_가리기
//
//  Created by Yongwoo Marco on 2022/04/22.
//

// https://programmers.co.kr/learn/courses/30/lessons/12948

import Foundation

func solution(_ phone_number:String) -> String {
    return phone_number.enumerated().map {
        $0.offset < phone_number.count - 4 ? "*" : String($0.element)
    }.joined()
}

print(solution("01033334444")) // "*******4444"
print(solution("027778888")) // "*****8888"
