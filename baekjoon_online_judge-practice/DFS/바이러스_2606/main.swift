//
//  main.swift
//  DFS/바이러스_2606
//
//  Created by Yongwoo Marco on 2021/08/18.
//

import Foundation

let computerCount = Int(readLine()!)!
let networkCount = Int(readLine()!)!

var computers = [(Bool, Set<Int>)](repeating: (false, []), count: computerCount + 1)

for _ in 1...networkCount {
    let input = readLine()!.components(separatedBy: " ").map({ Int($0)! })
 
    computers[input[0]].1.update(with: input[1])
    computers[input[1]].1.update(with: input[0])
}

func spread(from: Int, network: inout [(Bool, Set<Int>)]) {
    print("\(from) 컴퓨터 방문 \(network[from].0)")
    if network[from].0 == true {
        return
    }
    network[from].0 = true
    network[from].1.forEach({ spread(from: $0, network: &network) })
}

spread(from: 1, network: &computers)

let result = computers.filter({ $0.0 == true }).count

print(result - 1)
