//
//  main.swift
//  Kakao/2021/인턴/숫자_문자열과_영단어
//
//  Created by Yongwoo Marco on 2021/08/15.
//

import Foundation

func solution(_ s:String) -> Int {
    let table = ["zero":"0", "one":"1", "two":"2", "three":"3", "four":"4", "five":"5", "six":"6", "seven":"7", "eight":"8", "nine":"9"]
    var result = [String](), word = ""
    
    s.forEach { char in
        if char.isNumber {
            result.append(String(char))
        } else {
            word += String(char)
            if let number = table[word] {
                result.append(number)
                word.removeAll()
            }
        }
    }
    
    return Int(result.joined())!
}

print(solution("one4seveneight")) // 1478
print(solution("23four5six7")) // 234567
print(solution("2three45sixseven")) // 234567
print(solution("123")) // 123
