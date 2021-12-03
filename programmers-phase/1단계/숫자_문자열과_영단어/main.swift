//
//  main.swift
//  1단계/숫자_문자열과_영단어
//
//  Created by Yongwoo Marco on 2021/12/02.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/81301
func solution(_ s:String) -> Int {
    let wordTable = ["zero":"0", "one":"1", "two":"2", "three":"3", "four":"4", "five":"5", "six":"6", "seven":"7", "eight":"8", "nine":"9"]
    var wordBasket = "", result = ""
    
    s.forEach { char in
        if char.isNumber {
            result.append(String(char))
        } else {
            wordBasket.append(String(char))
            if wordTable.keys.contains(wordBasket) {
                result.append(wordTable[wordBasket]!)
                wordBasket = ""
            }
        }
    }
    return Int(result)!
}

print(solution("one4seveneight")) // 1478
print(solution("23four5six7")) // 234567
print(solution("2three45sixseven")) // 234567
print(solution("123")) // 123
