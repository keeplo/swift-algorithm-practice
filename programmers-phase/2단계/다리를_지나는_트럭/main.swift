//
//  main.swift
//  2단계/다리를_지나는_트럭
//
//  Created by Yongwoo Marco on 2022/05/12.
//

// https://programmers.co.kr/learn/courses/30/lessons/42583

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var trucks = truck_weights.map{ ($0, bridge_length) }
    var bridge = [(Int, Int)]()
    var second = 0, currentWeight = 0
    
    while(!trucks.isEmpty || !bridge.isEmpty) {
        for (index, truck) in bridge.enumerated() {
            if truck.1 == 0 {
                currentWeight -= truck.0
                bridge.remove(at: index)
            }
        }
            
        if let first = trucks.first, currentWeight + first.0 <= weight {
            currentWeight += first.0
            bridge.append(trucks.removeFirst())
        }
        
        for truck in 0..<bridge.count {
            bridge[truck].1 -= 1
        }
        
        second += 1
    }
    
    return second
}

print(solution(2, 10, [7,4,5,6])) // 8
print(solution(100, 100, [10])) // 101
print(solution(100, 100, [10,10,10,10,10,10,10,10,10,10])) // 110
