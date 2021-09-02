//
//  main.swift
//  정렬/단어_정렬_1181
//
//  Created by Yongwoo Marco on 2021/09/02.
//

// https://www.acmicpc.net/problem/1181

let wordCount = Int(readLine()!)!
var words = [String]()

for _ in 0..<wordCount {
    words.append(readLine()!)
}

Set(words).sorted { lhs, rhs -> Bool in
    return lhs.count < rhs.count || (lhs.count == rhs.count && lhs < rhs)
}.forEach { word in
    print(word)
}
