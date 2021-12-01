//
//  main.swift
//  BFS/토마토_7576
//
//  Created by Yongwoo Marco on 2021/08/29.
//

// https://www.acmicpc.net/problem/7576

struct Queue<T>{
    var enqueueArray: [T] = []
    var dequeueArray: [T] = []
    
    var isEmpty: Bool{
        return enqueueArray.isEmpty && dequeueArray.isEmpty
    }
    
//    var count: Int{
//        return enqueueArray.count + dequeueArray.count

    mutating func enqueue(_ n: T) {
        enqueueArray.append(n)
    }
    
    mutating func dequeue() -> T? {
        if dequeueArray.isEmpty{
            dequeueArray = enqueueArray.reversed()
            enqueueArray.removeAll()
        }
        return dequeueArray.popLast()
    }
}

let size = readLine()!.split(separator: " ").map{ Int($0)! }, directions = [(-1, 0), (0, -1), (1, 0), (0, 1)]
var box = [[Int]](), start = [(Int, Int)]()

for y in 0..<size[1] {
    let line = readLine()!.split(separator: " ").map{ Int($0)! }
    line.enumerated().forEach { bundle in
        if bundle.element == 1 {
            start.append((bundle.offset, y))
        }
    }
    box.append(line)
}

func bfs(start: [(Int, Int)], _ box: inout [[Int]], _ directions: [(Int, Int)], size: (Int, Int)) -> Int {
    var day = 0
    var visitQueue = Queue<((Int, Int), Int)>()
    
    start.forEach { point in
        visitQueue.enqueue((point, day))
    }
//    print("start \(start)")
    while let now = visitQueue.dequeue() {
        if day < now.1 { day = now.1 }
//        print("now \(now.0.0) , \(now.0.1)  nowday \(now.1)")
        directions.forEach { direction in
            let next = (now.0.0 + direction.0, now.0.1 + direction.1)
            
            if next.0 >= 0, next.0 < size.0,
               next.1 >= 0, next.1 < size.1,
               box[next.1][next.0] == 0 {
                box[next.1][next.0] = 1
                visitQueue.enqueue(((next.0, next.1), now.1 + 1))
            }
        }
    }
    return day
}

var result = bfs(start: start, &box, directions, size: (size[0], size[1]))

for line in box {
    if line.contains(0) {
        result = -1
    }
}

print(result)

