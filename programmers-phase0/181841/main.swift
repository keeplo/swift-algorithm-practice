//
//  main.swift
//  [181841 꼬리 문자열](https://school.programmers.co.kr/learn/courses/30/lessons/181841)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ str_list:[String], _ ex:String) -> String {
    return str_list.filter({ !$0.contains(ex) }).joined()
}

print(solution(["abc", "def", "ghi"], "ef")) // "abcghi"
print(solution(["abc", "bbc", "cbc"], "c")) // ""
