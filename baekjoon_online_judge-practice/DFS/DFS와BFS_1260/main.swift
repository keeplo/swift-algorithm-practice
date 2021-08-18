//
//  main.swift
//  DFS/DFS와BFS_1260
//
//  Created by Yongwoo Marco on 2021/08/08.
//

import Foundation

func go(_ vertexCount: Int, _ edgeCount: Int, _ startVertex: Int, _ edges: [[Int]]) {
    var dfsResult = [Int]()
    
    dfs(startVertex, &dfsResult, edges)
    
    print(dfsResult)
    print(bfs(vertexCount, startVertex, edges))
}

func dfs(_ startVertex: Int, _ paased: inout [Int], _ edges: [[Int]]) {
    
}

func bfs(_ vertexCount: Int, _ startVertex: Int, _ edges: [[Int]]) -> [Int] {
    let reSorted = edges.filter({ $0[0] == startVertex }) + edges.filter({ $0[0] != startVertex })
    var result = [Int]()
    
    for edge in reSorted {
        if !result.contains(edge[0]) {
            result.append(edge[0])
        }
        if !result.contains(edge[1]) {
            result.append(edge[1])
        }
        if result.count == vertexCount {
            return result
        }
    }
    
    return result
}


//let separated = readLine()!.components(separatedBy: " ").map({ Int($0)! })
//let (vertexCount, edgeCount, startVertex) = (separated[0], separated[1], separated[2])
//var edges = [[Int]]()
//
//for _ in 0..<edgeCount {
//    let numbers = readLine()!.components(separatedBy: " ").map({Int($0)!})
//    edges.append(numbers)
//}
//
//let sortedEdges = edges.sorted { (first, second) -> Bool in
//    if first[0] == second[0] {
//        return first[1] > second[1] ? false : true
//    } else {
//        return first[0] > second[0] ? false : true
//    }
//}

//print(sortedEdges)

//go(vertexCount, edgeCount, startVertex, edges)

var nums = readLine()!.split(separator: " ").map({ Int(String($0))! })
var days = 0, currentHeight = 0, top = nums[2]

while currentHeight < top {
    days += 1
    currentHeight += nums[0]
    if currentHeight >= top {
        break
    }
    currentHeight -= nums[1]
    print("day \(days) currentHeight \(currentHeight) \(top)")
}
print(days)

print(((top - nums[0]) / (nums[0] - nums[1])) + 1)
