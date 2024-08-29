//
//  main.swift
//  [181902 문자 개수 세기](https://school.programmers.co.kr/learn/courses/30/lessons/181902)
//
//  Created by 김용우 on 8/29/24.
//

import Foundation

func solution(_ my_string:String) -> [Int] {
    var table = ("A".unicodeScalars.first!.value..."Z".unicodeScalars.first!.value).map({ $0 })
    table.append(contentsOf: ("a".unicodeScalars.first!.value..."z".unicodeScalars.first!.value).map({ $0 }))
    var dic = Dictionary(uniqueKeysWithValues: table.map({ ($0, 0) }))
    for alphabet in my_string {
        dic[alphabet.unicodeScalars.first!.value]? += 1
    }
    return table.compactMap({ dic[$0] })
}

print(solution("Programmers"))
// [
//  0, 0, 0, 0, 0, 
//  0, 0, 0, 0, 0,
//  0, 0, 0, 0, 0,
//  1, 0, 0, 0, 0,
//  0, 0, 0, 0, 0,
//  0, 1, 0, 0, 0,
//  1, 0, 1, 0, 0,
//  0, 0, 0, 2, 0,
//  1, 0, 0, 3, 1,
//  0, 0, 0, 0, 0, 0, 0
// ]
