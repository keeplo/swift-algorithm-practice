//
//  main.swift
//  정렬/나이순_정렬_10814
//
//  Created by Yongwoo Marco on 2021/09/01.
//

// https://www.acmicpc.net/problem/10814

let caseCount = Int(readLine()!)!
var queue = [[String]]()

for _ in 0..<caseCount {
    let infos = readLine()!.split(separator: " ").map({ String($0) })
    
    queue.append(infos)
}

queue.sorted { lhs, rhs -> Bool in
    return Int(lhs[0])! < Int(rhs[0])!
}.forEach { print( $0.joined(separator: " ") ) }
