//
//  main.swift
//  정렬/좌표정렬하기_2_11651
//
//  Created by Yongwoo Marco on 2021/08/31.
//

// https://www.acmicpc.net/problem/11651

let caseCount = Int(readLine()!)!
var coordinates = [[Int]]()

for _ in 0..<caseCount {
    coordinates.append( readLine()!.split(separator: " ").map{ Int($0)! } )
}

coordinates.sorted(by: { lhs, rhs -> Bool in
    return lhs[1] < rhs[1] || (rhs[1] == lhs[1] && lhs[0] < rhs[0])
}).forEach { coordinate in
    print(coordinate.map{ String($0) }.joined(separator: " "))
}
