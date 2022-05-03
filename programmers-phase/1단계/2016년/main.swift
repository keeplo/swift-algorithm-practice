//
//  main.swift
//  1단계/2016년
//
//  Created by Yongwoo Marco on 2022/05/03.
//

// https://programmers.co.kr/learn/courses/30/lessons/12901

import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let weekdays = ["SUN", "MON", "TUE", "WED", "THU", "FRI" , "SAT"]
    let months = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let dayCount = months[0..<a-1].reduce(0, +) + b - 1
    let index = (5 + dayCount) % 7
    return weekdays[index]
}

print(solution(5, 24)) // "TUE"

