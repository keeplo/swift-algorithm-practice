//
//  main.swift
//  [181915 글자 이어 붙여 문자열 만들기](https://school.programmers.co.kr/learn/courses/30/lessons/181915)
//
//  Created by 김용우 on 8/4/24.
//

import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    let array = my_string.map({ String($0) })
    return index_list.map({ array[$0] }).joined()
}

print(solution("cvsgiorszzzmrpaqpe", [16, 6, 5, 3, 12, 14, 11, 11, 17, 12, 7])) // "programmers"
print(solution("zpiaz", [1, 2, 0, 0, 3]))   // "pizza"
