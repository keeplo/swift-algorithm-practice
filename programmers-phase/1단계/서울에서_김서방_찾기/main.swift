//
//  main.swift
//  1단계/서울에서_김서방_찾기
//
//  Created by Yongwoo Marco on 2022/04/29.
//

// https://programmers.co.kr/learn/courses/30/lessons/12919

import Foundation

func solution(_ seoul:[String]) -> String {
   return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
}

print(solution(["Jane", "Kim"])) // "김서방은 1에 있다"
