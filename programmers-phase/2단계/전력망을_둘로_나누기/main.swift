//
//  main.swift
//  2단계/전력망을_둘로_나누기
//
//  Created by Yongwoo Marco on 2022/05/19.
//

// https://programmers.co.kr/learn/courses/30/lessons/86971

import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var graph = [Int: [Int]](), results = [Int]()
    
    wires.forEach {
        for (i, j) in [($0[0], $0[1]), ($0[1], $0[0])] {
            if let vertexes = graph[i], !vertexes.contains(j) {
                graph[i]?.append(j)
            } else {
                graph.updateValue([j], forKey: i)
            }
        }
    }
        
    for cut in wires {
        let lhs = Set(bfs(start: cut[0], graph: graph, except: cut[1]))
        let rhs = Set(bfs(start: cut[1], graph: graph, except: cut[0]))
        
        if lhs.isDisjoint(with: rhs) {
            results.append(abs(lhs.count - rhs.count))
        }
    }
    
    return results.min() ?? 0
}

func bfs(start: Int, graph: [Int: [Int]], except: Int) -> [Int] {
    var lefts = graph, visited = [Int](), nexts = [start]
    
    lefts.removeValue(forKey: except)
    
    while let now = nexts.popLast() {
        if now == except { continue }
        visited.append(now)
        nexts.append(contentsOf: lefts[now] ?? [])
        lefts.removeValue(forKey: now)
    }

    return visited
}

print(solution(9, [[1,3],[2,3],[3,4],[4,5],[4,6],[4,7],[7,8],[7,9]])) // 3
print(solution(4, [[1,2],[2,3],[3,4]])) // 0
print(solution(7, [[1,2],[2,7],[3,7],[3,4],[4,5],[6,7]])) // 1
