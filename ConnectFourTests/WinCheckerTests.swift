//
//  WinCheckerTests.swift
//  ConnectFourTests
//
//  Created by Vincent Smithers on 15.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import XCTest
@testable import ConnectFour

class WinCheckerTests: XCTestCase {
    
    var board: Board!

    override func setUp() {
        board = Board(columns: 7, rows: 6)
    }

    override func tearDown() {}
    
    func testDraw() {
        let tile = Tile(column: 6, row: 5, state: .playerOne)
        let checkForWin = WinChecker(board: board, winningTile: tile, moveCount: 42)
        XCTAssertEqual(checkForWin.result, GameResult.draw)
    }

    func testHorizontalWin() {
        (0...5).forEach({board.addTile(inColumn: $0, forState: .playerOne)})
        guard let winningTile = board.addTile(inColumn: 6, forState: .playerOne) else { fatalError() }
        let checkForWin = WinChecker(board: board, winningTile: winningTile, moveCount: 6)
        XCTAssertEqual(checkForWin.result, GameResult.win(.playerOne))
    }
    
    func testVerticalWin() {
        for _ in 0...4 {
            board.addTile(inColumn: 0, forState: .playerTwo)
        }
        guard let winningTile = board.addTile(inColumn: 0, forState: .playerTwo) else { fatalError() }
        let checkForWin = WinChecker(board: board, winningTile: winningTile, moveCount: 5)
        XCTAssertEqual(checkForWin.result, GameResult.win(.playerTwo))
    }
    
    func testDiagnolWinAscending() {
        for count in 0...3 {
            for _ in 0...count {
                board.addTile(inColumn: count, forState: .playerTwo)
            }
        }
        guard let winningTile = board.addTile(inColumn: 3, forState: .playerTwo) else { fatalError() }
        let checkForWin = WinChecker(board: board, winningTile: winningTile, moveCount: 11)
        XCTAssertEqual(checkForWin.result, GameResult.win(.playerTwo))
    }
    
    func testDiagnolWinDescending() {
        var count = 6
        for _ in 0...4 {
            for _ in 0...count {
                board.addTile(inColumn: count, forState: .playerOne)
            }
            count -= 1
        }
        board.addTile(inColumn: 1, forState: .playerOne)
        guard let winningTile = board.addTile(inColumn: 1, forState: .playerOne) else { fatalError() }
        let checkForWin = WinChecker(board: board, winningTile: winningTile, moveCount: 25)
        XCTAssertEqual(checkForWin.result, GameResult.win(.playerOne))
    }
}
