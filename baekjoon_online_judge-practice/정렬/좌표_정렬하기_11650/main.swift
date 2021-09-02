//
//  main.swift
//  정렬/좌표_정렬하기_11650
//
//  Created by Yongwoo Marco on 2021/09/02.
//

// https://www.acmicpc.net/problem/11650

let coordinateCount = Int(readLine()!)!
var coordinates = [[Int]]()

for _ in 0..<coordinateCount {
    coordinates.append( readLine()!.split(separator: " ").map{ Int(String($0))! } )
}

coordinates.sorted { lhs, rhs -> Bool in
    return lhs[0] < rhs[0] || (lhs[0] == rhs[0] && lhs[1] < rhs[1])
}.forEach { coordinate in
    print("\(coordinate[0]) \(coordinate[1])")
}
