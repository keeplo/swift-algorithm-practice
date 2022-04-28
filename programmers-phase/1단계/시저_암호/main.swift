//
//  main.swift
//  1단계/시저_암호
//
//  Created by Yongwoo Marco on 2022/04/28.
//

// https://programmers.co.kr/learn/courses/30/lessons/12926

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    let values = (a: Character("a").asciiValue!, z: Character("z").asciiValue!,
                  A: Character("A").asciiValue!, Z: Character("Z").asciiValue!)
    let ranges = (lowercase: values.a...values.z,
                  uppercase: values.A...values.Z)
    return s.map { char in
        if char == " " {
            return String(char)
        } else {
            let value = char.asciiValue!
            var sum = value + UInt8(n)
            if ranges.lowercase ~= value && sum > values.z {
                sum = sum - values.z + values.a - 1
            } else if ranges.uppercase ~= value && sum > values.Z {
                sum = sum - values.Z + values.A - 1
            }
            
            return String(Character(UnicodeScalar(sum)))
        }
    }.joined()
}

print(solution("AB", 1)) // "BC"
print(solution("z", 1)) // "a"
print(solution("a B z", 4)) // "e F d"

