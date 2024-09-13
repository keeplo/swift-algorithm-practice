//
//  main.swift
//  [181874 A 강조하기](https://school.programmers.co.kr/learn/courses/30/lessons/181874)
//
//  Created by 김용우 on 9/13/24.
//

import Foundation

func solution(_ myString:String) -> String {
    return myString.lowercased().replacingOccurrences(of: "a", with: "A")
}

print(solution("abstract algebra")) // "AbstrAct AlgebrA"
print(solution("PrOgRaMmErS")) // "progrAmmers"

