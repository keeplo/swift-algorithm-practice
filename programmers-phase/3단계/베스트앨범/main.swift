//
//  main.swift
//  3단계/베스트앨범
//
//  Created by Yongwoo Marco on 2022/08/04.
//

// https://school.programmers.co.kr/learn/courses/30/lessons/42579

import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
	let filteredGenres = Array(Set(genres))

	var playCount = Dictionary(
		uniqueKeysWithValues: zip(filteredGenres,
								  [Int](
									repeating: 0,
									count: filteredGenres.count))
	)
	var table = Dictionary(
		uniqueKeysWithValues: zip(filteredGenres,
								  [[(Int, Int)]](
									repeating: [(0, 0), (0, 0)],
									count: filteredGenres.count))
	)
	
	for (index, genre) in genres.enumerated() {
		let play = plays[index]
		let bests = table[genre]!
		
		if let first = bests.first, play > first.1 {
			table[genre]?[1] = first
			table[genre]?[0] = (index, play)
		} else if let last = bests.last, play > last.1 {
			table[genre]?[1] = (index, play)
		}
		
		playCount[genre] = (playCount[genre] ?? 0) + play
	}
	
	
	
	return playCount.sorted { $0.value > $1.value }
		.map { table[$0.key]!.filter { $0.1 != 0 } }
		.flatMap { $0 }
		.map { $0.0 }
}

print(solution(["classic", "pop", "classic", "classic", "pop"], [500, 600, 150, 800, 2500])) // [4, 1, 3, 0]
