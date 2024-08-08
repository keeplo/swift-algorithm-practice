//
//  main.swift
//  [181877 대문자로 바꾸기](https://school.programmers.co.kr/learn/courses/30/lessons/181877)
//
//  Created by 김용우 on 8/9/24.
//

import Foundation

func solution(_ myString:String) -> String {
    return myString.uppercased()
}

print(solution("aBcDeFg"))  // "ABCDEFG"
print(solution("AAA"))      // "AAA"
