//
//  main.swift
//  2020/인턴/숫자_문자열과_영단어
//
//  Created by Yongwoo Marco on 2022/05/08.
//

// https://programmers.co.kr/learn/courses/30/lessons/81301

import Foundation

func solution(_ s:String) -> Int {
    var wordBasket = "", result = ""
    let wordTable = ["zero":"0", "one":"1", "two":"2", "three":"3", "four":"4",
                     "five":"5", "six":"6", "seven":"7", "eight":"8", "nine":"9"]
    
    s.forEach { char in
        if char.isNumber {
            result.append(String(char))
        } else {
            wordBasket.append(String(char))
            if let number = wordTable[wordBasket] {
                result.append(number)
                wordBasket = ""
            }
        }
    }
    return Int(result) ?? 0
}

print(solution("one4seveneight")) // 1478
print(solution("23four5six7")) // 234567
print(solution("2three45sixseven")) // 234567
print(solution("123")) // 123
