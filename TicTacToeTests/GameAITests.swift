//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by Michael Redig on 6/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameAITests: XCTestCase {

	func testWinCheckingVertical1() {
//		x o -
//		x o -
//		x - -

//		Make above marks
		var board = GameBoard()

		try! board.place(mark: .x, on: (0,0))
		try! board.place(mark: .x, on: (0,1))
		try! board.place(mark: .x, on: (0,2))
		try! board.place(mark: .o, on: (1,0))
		try! board.place(mark: .o, on: (1,1))

		XCTAssert(game(board: board, isWonBy: .x))
		XCTAssertFalse(game(board: board, isWonBy: .o))
//
//		assert game is won by x
//		assert game is not won by o
	}
}
