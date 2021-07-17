//
//  main.swift
//  DFS_BFS/단어_변환
//
//  Created by Yongwoo Marco on 2021/07/18.
//

import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    let count = 0
    guard words.contains(target) else { return count }

    if let result = goToNextWord(begin, words, count, target) {
        return result
    } else {
        return 0
    }
}

func goToNextWord(_ current: String, _ nextCandidates: [String], _ depth: Int, _ target: String) -> Int? {
    if checkWords(current, target) {
       return depth + 1
    }
    
    for candidate in nextCandidates {
        if checkWords(current, candidate) {
           return goToNextWord(candidate, nextCandidates.filter({ $0 != candidate }), depth + 1, target)
        }
    }
    return nil
}

func checkWords(_ lhs: String, _ rhs: String) -> Bool {
    let sameCharCount = lhs.enumerated().filter({ $0.element == Array(rhs)[$0.offset] }).count
    let expectedCount = lhs.count - 1
    return sameCharCount == expectedCount
}

print(solution("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]))
// 4
print(solution("hit", "cog", ["hot", "dot", "dog", "lot", "log"]))
// 0

