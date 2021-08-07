//
//  main.swift
//  DFS_BFS/여행경로
//
//  Created by Yongwoo Marco on 2021/08/07.
//

import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var paths = [[String]]()

    fly("ICN", passed: [], left: tickets, visited: &paths)
    
    return paths.first!
}

func fly(_ to: String, passed: [String], left: [[String]], visited: inout [[String]]) {
    if left.isEmpty { visited.append(passed + [to]) }

    let tickets = left.filter({ $0[0] == to }).sorted(by: { $0[1] < $1[1] })
    
    for ticket in tickets {
        var removed = left
        removed.remove(at: removed.firstIndex(of: ticket)!)
        fly(ticket[1], passed: passed + [to], left: removed, visited: &visited)
    }
}

print(solution([["ICN", "JFK"], ["HND", "IAD"], ["JFK", "HND"]]))
// ["ICN", "JFK", "HND", "IAD"]

print(solution([["ICN", "SFO"], ["ICN", "ATL"], ["SFO", "ATL"], ["ATL", "ICN"], ["ATL","SFO"]]))
// ["ICN", "ATL", "ICN", "SFO", "ATL", "SFO"]
