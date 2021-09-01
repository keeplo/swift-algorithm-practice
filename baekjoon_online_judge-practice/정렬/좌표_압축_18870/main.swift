//
//  main.swift
//  정렬/좌표_압축_18870
//
//  Created by Yongwoo Marco on 2021/09/01.
//

// https://www.acmicpc.net/problem/18870

let caseCount = Int(readLine()!)!
let inputs = readLine()!.split(separator: " ").map{ Int(String($0))! }
let sorted = Set(inputs).sorted(by: <)

//let result = inputs.map{ original -> String in
//    let index = sorted.firstIndex(of: original)!
//    return String(index)
//}
//print(result.joined(separator: " "))

//var result = [Int:Int]()
//(0..<sorted.count).forEach{ result.updateValue($0, forKey: sorted[$0]) }
//
//print(inputs.map{ String(result[$0]!) }.joined(separator: " "))

let result = Dictionary(uniqueKeysWithValues: zip(sorted, (0..<sorted.count)))
print(inputs.map({ String(result[$0]!) }).joined(separator: " "))
