//
//  main.swift
//  [181897 라스트 자르기](https://school.programmers.co.kr/learn/courses/30/lessons/181897)
//
//  Created by 김용우 on 9/4/24.
//

import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
   switch n {
      case 1:     return Array(num_list[0...slicer[1]])
      case 2:     return Array(num_list[slicer[0]..<num_list.count])
      case 3:     return Array(num_list[slicer[0]...slicer[1]])
      default:    return stride(from: slicer[0], through: slicer[1], by: slicer[2]).map { num_list[$0] }
   }
}

print(solution(3, [1, 5, 2], [1, 2, 3, 4, 5, 6, 7, 8, 9])) // [2, 3, 4, 5, 6]
print(solution(4, [1, 5, 2], [1, 2, 3, 4, 5, 6, 7, 8, 9])) // [2, 4, 6]
