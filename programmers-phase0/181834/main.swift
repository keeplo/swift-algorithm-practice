//
//  main.swift
//  [181834 l로 만들기](https://school.programmers.co.kr/learn/courses/30/lessons/181834)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ myString:String) -> String {
    return myString.map {
        if $0.lowercased().unicodeScalars.first! < "l".unicodeScalars.first! {
            return "l"
        } else {
            return String($0)
        }
    }
    .joined()
}

print(solution("abcdevwxyz")) // "lllllvwxyz"
print(solution("jjnnllkkmm")) // "llnnllllmm"
