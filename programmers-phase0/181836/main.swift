//
//  main.swift
//  [181836 그림 확대](https://school.programmers.co.kr/learn/courses/30/lessons/181836)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    return picture.map {
        [String](
            repeating: $0.map({ [String](repeating: String($0), count: k).joined() }).joined(),
            count: k
        )
    }
    .flatMap({ $0 })
}

print(solution([".xx...xx.", "x..x.x..x", "x...x...x", ".x.....x.", "..x...x..", "...x.x...", "....x...."], 2)) // ["..xxxx......xxxx..", "..xxxx......xxxx..", "xx....xx..xx....xx", "xx....xx..xx....xx", "xx......xx......xx", "xx......xx......xx", "..xx..........xx..", "..xx..........xx..", "....xx......xx....", "....xx......xx....", "......xx..xx......", "......xx..xx......", "........xx........", "........xx........"]
print(solution(["x.x", ".x.", "x.x"], 3)) // ["xxx...xxx", "xxx...xxx", "xxx...xxx", "...xxx...", "...xxx...", "...xxx...", "xxx...xxx", "xxx...xxx", "xxx...xxx"]
