//
//  main.swift
//  0단계/모든문제
//
//  Created by Yongwoo Marco on 10/21/23.
//

import Foundation

// 문자열을_정수로_변환하기
func solution1(_ n_str:String) -> Int {
	return Int(n_str.filter({ $0.isNumber }).map({ String($0) }).joined())!
}

print(solution1("10"))		// 10
print(solution1("8542"))	// 8642

print("- - - - - - - - - - - - - - - - - - - - ")

// n의배수
func solution2(_ num:Int, _ n:Int) -> Int {
	return num % n == 0 ? 1 : 0
}

print(solution2(98, 2)) // 1
print(solution2(34, 3)) // 0

print("- - - - - - - - - - - - - - - - - - - - ")

// 정수 부분
func solution3(_ flo:Double) -> Int {
	return Int(flo)
}

print(solution3(1.42))	// 1
print(solution3(69.32))	// 69

print("- - - - - - - - - - - - - - - - - - - - ")

// my_string
func solution4(_ rny_string:String) -> String {
	return rny_string.replacingOccurrences(of: "m", with: "rn")
}

print("masterpiece") // "rnasterpiece"
print("programmers") // "prograrnrners"
print("jerry")       // "jerry"
print("burn")        // "burn"

print("- - - - - - - - - - - - - - - - - - - - ")
	
// 부분 문자열인지 확인하기
func solution5(_ my_string:String, _ target:String) -> Int {
	return my_string.contains(target) ? 1 : 0
}

print(solution5("banana", "ana"))   // 1
print(solution5("banana", "wxyz"))	// 0
	
print("- - - - - - - - - - - - - - - - - - - - ")

// 소문자로 바꾸기
func solution6(_ myString:String) -> String {
	return myString.map({ $0.lowercased() }).map({ String($0) }).joined()
}

print(solution6("aBcDeFg"))   	// "abcdefg"
print(solution6("aaa"))			// "aaa"
	
print("- - - - - - - - - - - - - - - - - - - - ")

// 원소들의 곱과합
func solution7(_ num_list:[Int]) -> Int {
	return num_list.reduce(1, *) < Int(pow(Double(num_list.reduce(0, +)), 2)) ? 1 : 0
}

print(solution7([3, 4, 5, 2, 1])) // 1
print(solution7([5, 7, 8, 3])) // 0

print("- - - - - - - - - - - - - - - - - - - - ")

// 문자열 겹쳐쓰기
func solution8(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
	var base = my_string, overWrite = overwrite_string
	var stack = (0..<s).map({ _ in base.removeFirst() })

	for _ in base {
		if !overWrite.isEmpty {
			stack.append(overWrite.removeFirst())
			base.removeFirst()
		} else {
			stack.append(contentsOf: base)
			break
		}
	}
	
	return stack.map({ String($0) }).joined()
}

print(solution8("He11oWor1d", "lloWorl", 2))		// "HelloWorld"
print(solution8("Program29b8UYP", "merS123", 7))   // "ProgrammerS123"

print("- - - - - - - - - - - - - - - - - - - - ")
