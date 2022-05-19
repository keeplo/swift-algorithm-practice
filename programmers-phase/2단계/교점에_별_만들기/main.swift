//
//  main.swift
//  2단계/교점에_별_만들기
//
//  Created by Yongwoo Marco on 2022/05/18.
//

// https://programmers.co.kr/learn/courses/30/lessons/87377

import Foundation

func solution(_ line:[[Int]]) -> [String] {
    var coordinates = [Int: [Int]]()
    var maxX = Int.min, maxY = Int.min, minX = Int.max, minY = Int.max
    
    
    func makeCoordinates(arr1: [Double], arr2: [Double]) {
        let deno = arr1[0] * arr2[1] - arr1[1] * arr2[0]
        guard deno != 0 else { return }
        
        let x = (arr1[1]*arr2[2] - arr1[2]*arr2[1]) / deno
        let intX = Int(x)
        guard x == Double(intX) else { return }
    
        
        let y = (arr1[2]*arr2[0] - arr1[0]*arr2[2]) / deno
        let intY = Int(y)
        guard y == Double(intY) else { return }
        
        maxX = max(maxX, intX)
        minX = min(minX, intX)
        maxY = max(maxY, intY)
        minY = min(minY, intY)
        
        if let _ = coordinates[intY] {
            coordinates[intY]?.append(intX)
        } else {
            coordinates.updateValue([intX], forKey: intY)
        }
    }
    
    func combination(_ arr: [[Double]], size: Int, current index: Int, selected: [[Double]]) {
        if size == 0 {
            makeCoordinates(arr1: selected[0], arr2: selected[1])
        } else if index == arr.count {
            return
        } else {
            var newSelected = selected
            newSelected.append(arr[index])
            combination(arr, size: size - 1, current: index + 1, selected: newSelected)
            combination(arr, size: size, current: index + 1, selected: selected)
        }
    }

    combination(line.map { $0.map { Double($0) } }, size: 2, current: 0, selected: [])
    
    var results = [String]()
    for y in (minY...maxY).reversed() {
        var line = [String](repeating: ".", count: maxX - minX + 1)
        if let xArr = coordinates[y] {
            for x in xArr {
                line[x - minX] = "*"
            }
        }
        results.append(line.joined())
    }
    
    return results
}

print(solution([[2, -1, 4], [-2, -1, 4], [0, -1, 1], [5, -8, -12], [5, 8, 12]]))
// ["....*....", ".........", ".........", "*.......*", ".........", ".........", ".........", ".........", "*.......*"]
print(solution([[0, 1, -1], [1, 0, -1], [1, 0, 1]]))  // ["*.*"]
print(solution([[1, -1, 0], [2, -1, 0]]))  // ["*"]
print(solution([[1, -1, 0], [2, -1, 0], [4, -1, 0]]))  // ["*"]
