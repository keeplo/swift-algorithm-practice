//
//  main.swift
//  [181932-코드 처리하기](https://school.programmers.co.kr/learn/courses/30/lessons/181932)
//
//  Created by 김용우 on 7/22/24.
//

import Foundation

func solution(_ code:String) -> String {
    var mode = 0
    let ret = code.enumerated().map { offset, element in
        let str = String(element)

        if let number = Int(str) {
            if number == 1 {
                mode = mode == .zero ? 1 : 0
            }
            return ""
        } else {
            if mode == .zero {
                return offset % 2 == 0 ? str : ""
            } else {
                return offset % 2 != 0 ? str : ""
            }
        }
    }
    .joined()
    return ret == "" ? "EMPTY" : ret
}

print(solution("abc1abc1abc"))  // "acbac"
