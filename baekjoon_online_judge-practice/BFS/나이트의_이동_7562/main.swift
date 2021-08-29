//
//  main.swift
//  BFS/나이트의_이동_7562
//
//  Created by Yongwoo Marco on 2021/08/29.
//

// https://www.acmicpc.net/problem/7562

let directions = [(2, -1), (1, -2), (1, 2), (2, 1), (-2, 1), (-1, 2), (-2, -1), (-1, -2) ]
let caseCount = Int(readLine()!)!

// (x, y) / arr[y][x]
func bfs(start: (Int, Int), end: (Int, Int), size: Int, _ directions: [(Int, Int)]) -> Int {
    guard start != end else { return 0 }
    
    var check = [[Bool]](repeating: [Bool](repeating: false, count: size), count: size)
    var visitQueue = [(start, 0)]
    check[start.1][start.0] = true
    
    while !visitQueue.isEmpty {
        let now = visitQueue.removeFirst()
        if now.0 == end { return now.1 }
        
        directions.forEach { direction in
            let next = (now.0.0 + direction.0, now.0.1 + direction.1)
            
            if next.0 >= 0, next.0 < size,
               next.1 >= 0, next.1 < size,
               !check[next.1][next.0] {
                check[next.1][next.0] = true
                visitQueue.append((next, now.1 + 1))
            }
        }
    }
    return 0
}


for _ in 0..<caseCount {
    let size = Int(readLine()!)!
    let start = readLine()!.split(separator: " ").map({ Int(String($0))! })
    let end = readLine()!.split(separator: " ").map({ Int(String($0))! })
    print(bfs(start: (start[0], start[1]), end: (end[0], end[1]), size: size, directions))
}

