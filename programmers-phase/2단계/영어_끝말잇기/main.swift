//
//  main.swift
//  2단계/영어_끝말잇기
//
//  Created by Yongwoo Marco on 2022/05/31.
//

// https://programmers.co.kr/learn/courses/30/lessons/12981

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var check = [String]()
    
    for (index, word)  in words.enumerated() {
        if !check.isEmpty, check.contains(word) || check.last!.last! != word.first! {
            return [index%n + 1, index/n + 1]
        }
        check.append(word)
    }
    
    return [0, 0]
}

print(solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]))   // [3,3]
print(solution(5, ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"]))    // [0,0]
print(solution(2, ["hello", "one", "even", "never", "now", "world", "draw"]))   // [1,3]
