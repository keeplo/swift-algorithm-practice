//
//  main.swift
//  정렬/소트인사이드_1427
//
//  Created by Yongwoo Marco on 2021/08/31.
//

// https://www.acmicpc.net/problem/1427

let number = readLine()!.map({ Int(String($0))! })

print(number.sorted(by: >).map({ String($0) }).joined())
