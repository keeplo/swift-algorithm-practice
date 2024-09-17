//
//  main.swift
//  [181866 문자열 잘라서 정렬하기](https://school.programmers.co.kr/learn/courses/30/lessons/181866)
//
//  Created by 김용우 on 9/17/24.
//

import Foundation

func solution(_ myString:String) -> [String] {
    return myString.components(separatedBy: "x").filter({ !$0.isEmpty }).sorted(by: <)
}

print(solution("axbxcxdx")) // ["a","b","c","d"]
print(solution("dxccxbbbxaaaa")) // ["aaaa","bbb","cc","d"]
