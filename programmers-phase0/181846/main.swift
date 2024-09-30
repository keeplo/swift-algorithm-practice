//
//  main.swift
//  [181846 두 수의 합](https://school.programmers.co.kr/learn/courses/30/lessons/181846)
//
//  Created by 김용우 on 9/29/24.
//

import Foundation

func solution(_ a:String, _ b:String) -> String {
    var reversedA = a.reversed().compactMap({ Int(String($0)) })
    var reversedB = b.reversed().compactMap({ Int(String($0)) })
    
    if a.count != b.count {
        let count = a.count - b.count
        
        if count > 0 {
            reversedB.append(contentsOf: [Int](repeating: 0, count: count))
        } else {
            reversedA.append(contentsOf: [Int](repeating: 0, count: abs(count)))
        }
    }
    
    var plus = 0
    
    var result = [Int]()
    for index in 0..<reversedA.count {
        let sum = reversedA[index] + reversedB[index] + plus
        
        if sum >= 10 {
            plus = 1
            result.append(sum - 10)
        } else {
            plus = 0
            result.append(sum)
        }
    }
    
    if plus > 0 {
        result.append(plus)
    }
    
    return result.reversed().map({ String($0) }).joined()
}

print(solution("582", "734")) // "1316"
print(solution("18446744073709551615", "287346502836570928366")) // "305793246910280479981"
print(solution("0", "0")) // "0"
