//
//  main.swift
//  2018/공채/[1차]비밀지도
//
//  Created by Yongwoo Marco on 2022/05/06.
//

// https://programmers.co.kr/learn/courses/30/lessons/17681

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    let unionTable = zip(arr1, arr2).map { data -> String in
        let str = String(UInt16(data.0) | UInt16(data.1), radix: 2)
        return str.count < n ? String(repeating: "0", count: n - str.count) + str : str
    }
    return unionTable.map { $0.reduce("") { $1 == "1" ? $0 + "#" : $0 + " " } }
}

print(solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28]))
// ["#####","# # #", "### #", "# ##", "#####"]
print(solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10]))
// ["######", "### #", "## ##", " #### ", " #####", "### # "]
