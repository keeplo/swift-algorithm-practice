//
//  main.swift
//  2021/공채/신규_아이디_추천
//
//  Created by Yongwoo Marco on 2022/05/06.
//

// https://programmers.co.kr/learn/courses/30/lessons/72410

import Foundation

func solution(_ new_id:String) -> String {
    let phaseOne = new_id.map{ Character($0.lowercased()) }
    let phaseTwo = phaseOne.filter{ $0.isLetter || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." }
    let phaseThree = phaseTwo.map{ String($0) }.reduce(""){ first, added in
        if let last = first.last, last == ".", added == "." {
            return first
        } else {
            return first + added
        }
    }
    let phaseFour = phaseThree.trimmingCharacters(in: ["."])
    let phaseFive = phaseFour.isEmpty ? "a" : phaseFour
    let phaseSix = phaseFive.count > 15 ? ( Array(phaseFive)[14] == "." ? Array(phaseFive)[0..<14].map{ String($0) }.joined() : Array(phaseFive)[0..<15].map{ String($0) }.joined()  ) : phaseFive
    var phaseSeven = phaseSix
    while phaseSeven.count < 3 {
        phaseSeven.append(phaseSeven.last!)
    }
    return phaseSeven
}

print(solution("...!@BaT#*..y.abcdefghijklm")) // "bat.y.abcdefghi"
print(solution("z-+.^."))                      // "z--"
print(solution("=.="))                         // "aaa"
print(solution("123_.def"))                    // "123_.def"
print(solution("abcdefghijklmn.p"))            // "abcdefghijklmn"
