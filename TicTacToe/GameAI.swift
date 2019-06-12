//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {

	// check horizontals

	outer: for x in 0...2 {
		for y in 0...2 {
			guard board[(x, y)] == player else { continue outer }
		}
		return true
	}

	// check verticals

	outer: for y in 0...2 {
		for x in 0...2 {
			guard board[(x, y)] == player else { continue outer }
		}
		return true
	}

	// check diagonals

	let ltr: [Coordinate] = [(0,0), (1,1), (2,2)]

	var markCount = 0
	for coord in ltr {
		guard board[coord] == player else { continue }
		markCount += 1
	}

	if markCount == 3 {
		return true
	}

	let rtl: [Coordinate] = [(2,0), (1,1), (0                  ,2)]

	markCount = 0
	for coord in rtl {
		guard board[coord] == player else { continue }
		markCount += 1
	}

	if markCount == 3 {
		return true
	}

	return false
}
