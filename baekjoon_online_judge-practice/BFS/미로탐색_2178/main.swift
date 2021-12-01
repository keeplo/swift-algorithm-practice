//
//  main.swift
//  BFS/미로탐색_2178
//
//  Created by Yongwoo Marco on 2021/08/28.
//

// https://www.acmicpc.net/problem/2178

let inputs = readLine()!.split(separator: " ").map({ Int($0)! })
let end = (inputs[1] - 1, inputs[0] - 1), directions = [(1,0), (0,1), (-1,0), (0, -1)]
var map = [[Int]](), visit = [[Bool]](repeating: [Bool](repeating: false, count: inputs[1]), count: inputs[0])
var result = [Int](), distance = [[Int]](repeating: [Int](repeating: 0, count: inputs[1]), count: inputs[0])

for _ in 0..<inputs[0] {
    map.append( readLine()!.map({ Int(String($0))! }) )
}

var count = 1
var willVisit = [((0,0), count)]

while !willVisit.isEmpty {
    let now = willVisit.removeFirst()
    if now.0 == end {
        print(now.1)
        break
    }
    print("willVisit \(willVisit.count), \(now)")
    visit[now.0.1][now.0.0] = true
    
    directions.forEach { direction in
        let next = (now.0.0 + direction.0, now.0.1 + direction.1)
        if next.0 >= 0, next.0 <= end.0,
           next.1 >= 0, next.1 <= end.1,
           map[next.1][next.0] == 1,
           !visit[next.1][next.0] {
            print("next \(next)")
            willVisit.append((next, now.1 + 1))
        }
    }
}


