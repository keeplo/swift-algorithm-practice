//
//  main.swift
//  1단계/가운데_글자_가져오기
//
//  Created by Yongwoo Marco on 2022/05/02.
//

// https://programmers.co.kr/learn/courses/30/lessons/12903

import Foundation

func solution(_ s:String) -> String {
    if s.count % 2 == 0 {
        return Array(s)[(s.count/2 - 1)...s.count/2].reduce("") { $0 + String($1) }
    } else {
        return String(Array(s)[s.count/2])
    }
}

print(solution("abcde")) // "c"
print(solution("qwer")) // "we"
    
    
