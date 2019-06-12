//
//  GameBoardTicTacToeTests.swift
//  GameBoardTicTacToeTests
//
//  Created by Michael Redig on 6/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

// test the functionality of your app "programmatically"

import XCTest
@testable import TicTacToe

class GameBoardTicTacToeTests: XCTestCase {
	func testCreatingEmptyGameBoard() {
		let board = GameBoard()

		for y in 0...2 {
			for x in 0...2 {
				XCTAssertNil(board[(x, y)])
			}
		}
	}

	func testPlacingMark() {
		var board = GameBoard()
		try! board.place(mark: .x, on: (1,1))

		for y in 0...2 {
			for x in 0...2 {
				if x == 1, y == 1 {
					XCTAssert(board[(x, y)] == .x)
				} else {
					XCTAssertNil(board[(x, y)])
				}
			}
		}

	}
}
