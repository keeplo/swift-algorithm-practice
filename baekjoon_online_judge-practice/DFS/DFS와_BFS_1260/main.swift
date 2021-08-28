//
//  main.swift
//  DFS/DFS와_BFS_1260
//
//  Created by Yongwoo Marco on 2021/08/28.
//

// https://www.acmicpc.net/problem/1260

let inputs = readLine()!.split(separator: " ").map({Int(String($0))!})
var vertex =  [[Int]](repeating: [], count: inputs[0]+1)

for _ in 0..<inputs[1] {
    let nodes = readLine()!.split(separator: " ").map({Int(String($0))!})
    vertex[nodes[0]].append(nodes[1])
    vertex[nodes[0]].sort(by: <)
    vertex[nodes[1]].append(nodes[0])
    vertex[nodes[1]].sort(by: <)
}

func dfs(base: Int, visited: inout [Bool], _ result: inout [Int], _ vertex: inout [[Int]]) {
    if visited[base] {
        return
    } else {
        visited[base] = true
        result.append(base)
        
        vertex[base].forEach { next in
            dfs(base: next, visited: &visited, &result, &vertex)
        }
    }
}

func bfs(base: Int, _ result: inout [Int], _ vertex: inout [[Int]]) {
    var willVisit = [base]
    
    while let now = willVisit.popLast(), result.count < vertex.count - 1 {
        result.append(now)
        for next in vertex[now] {
            if !willVisit.contains(next), !result.contains(next) {
                willVisit.insert(next, at: 0)
            }
        }
    }
}
var dfsVertex = vertex, bfsVertex = vertex

// MARK: --- DFS
var visited = [Bool](repeating: false, count: inputs[0] + 1)
var dfsResult = [Int]()

dfs(base: inputs[2], visited: &visited, &dfsResult, &dfsVertex)
print( dfsResult.map({ String($0) }).joined(separator: " "))

// MARK: --- BFS
var bfsResult = [Int]()

bfs(base: inputs[2], &bfsResult, &bfsVertex)
print(bfsResult.map({ String($0) }).joined(separator: " "))
