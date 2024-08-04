//
//  main.swift
//  [181913 문자열 여러 번 뒤집기](https://school.programmers.co.kr/learn/courses/30/lessons/181913)
//
//  Created by 김용우 on 8/5/24.
//

import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var current = Array(my_string)
     
    for query in queries {
        current[query[0]...query[1]] =  ArraySlice(current[query[0]...query[1]].reversed())
    }
    
    return current.map({ String($0) }).joined()
}

print(solution("rermgorpsam", [[2, 3], [0, 7], [5, 9], [6, 10]]))   // "programmers"
