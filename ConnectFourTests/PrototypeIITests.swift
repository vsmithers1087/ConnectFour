//
//  PrototypeIITests.swift
//  PrototypeIITests
//
//  Created by Vincent Smithers on 12.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import XCTest
@testable import PrototypeII

class PrototypeIITests: XCTestCase {
    
    let boardViewModel = BoardViewModel(columns: 7, rows: 6)
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSimpleVerticalWin() {
        
        var column = 1
        for index in 0...6  {
            if index % 2 == 0 {
                boardViewModel.dropTile(inColumn: 0)
            } else {
                boardViewModel.dropTile(inColumn: column)
                column += 1
            }
        }

        XCTAssertEqual(boardViewModel.gameState, .playerOneWins)
    }
    
    func testSimpleHorizontalWin() {
        var column = 1
        
        for index in 0...6  {
            if index % 2 == 0 {
                boardViewModel.dropTile(inColumn: column)
                column += 1
            } else {
                boardViewModel.dropTile(inColumn: 5)
            }
        }

        XCTAssertEqual(boardViewModel.gameState, .playerOneWins)
    }
    
    func testDiagnolWinDescending() {
        
//        /*
//         stack black tiles in descending order
//         0
//         X0
//         XX0
//         XXX0
//         */
//
//        //make move, set current player to black
//        connectFourViewModel.makeMove(slotIndex: 5)
//        XCTAssertEqual(connectFourViewModel.gameState, .playerTurn(.B))
//
//        var wall = 4
//
//        while wall > 0 {
//
//            wall -= 1
//
//            for innerIndex in 0...wall {
//                _ = connectFourViewModel.gameBoard.addTileAt(slotIndex: innerIndex, withState: .playerA)
//            }
//
//            if wall == 0 {
//                connectFourViewModel.makeMove(slotIndex: wall)
//            } else {
//                _ = connectFourViewModel.gameBoard.addTileAt(slotIndex: wall, withState: .playerB)
//            }
//
//        }
//
//        XCTAssertEqual(connectFourViewModel.gameState, .winningMove(.B))
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
