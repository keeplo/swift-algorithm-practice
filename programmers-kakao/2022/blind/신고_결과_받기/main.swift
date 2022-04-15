//
//  main.swift
//  2022/blind/신고_결과_받기
//
//  Created by Yongwoo Marco on 2022/04/15.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/92334

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reportedCount = [String: Int]()
    var table = [String: Set<String>]()
    
    Set(report).forEach {
        let splits = $0.split(separator: " ").map { String($0) }
        let reporter = splits[0]
        let reported = splits[1]
        var reportedList = table[reporter] ?? []
        reportedList.update(with: reported)
        table[reporter] = reportedList
        reportedCount[reported] = (reportedCount[reported] ?? 0) + 1
    }
    
    return id_list.map { user in
        return (table[user] ?? []).reduce(0) {
            $0 + ((reportedCount[$1] ?? 0) >= k ? 1 : 0)
        }
    }
}

print(solution(["muzi", "frodo", "apeach", "neo"],
               ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"],
               2)) // [2,1,1,0]

print(solution(["con", "ryan"],
               ["ryan con", "ryan con", "ryan con", "ryan con"],
               3)) // [0,0]
