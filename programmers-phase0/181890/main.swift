//
//  main.swift
//  [181890 왼쪽 오른쪽](https://school.programmers.co.kr/learn/courses/30/lessons/181890)
//
//  Created by 김용우 on 9/5/24.
//

import Foundation

func solution(_ str_list:[String]) -> [String] {
   for (offset, element) in str_list.enumerated() {
      if element == "l" {
          return offset == 0 ? [] : Array(str_list[0..<offset])
      } else if element == "r" {
         let lastIndex = str_list.count - 1
         return offset == lastIndex ? [] : Array(str_list[(offset + 1)...lastIndex])
      }
   }
   return []
}

print(solution(["u", "u", "l", "r"])) // ["u", "u"]
print(solution(["l"])) // []
