//
//  main.swift
//  2단계/스킬트리
//
//  Created by Yongwoo Marco on 2022/06/01.
//

// https://programmers.co.kr/learn/courses/30/lessons/49993

import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    return skill_trees.filter { tree in
        var queue = skill.map { $0 }
        for skill in tree {
            if queue.contains(skill) {
                if let first = queue.first, first == skill {
                    queue.removeFirst()
                } else {
                    return false
                }
            }
        }
        return true
    }.count
}

print(solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"])) // 2
