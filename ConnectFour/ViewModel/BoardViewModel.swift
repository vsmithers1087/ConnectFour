//
//  BoardViewModel.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI
import Combine

final class BoardViewModel: ObservableObject {
    
    private let tilesToWin: Int
    private var moveCount = 0
    @Published var board: Board

    var state: GameState = .playerOneTurn {
        didSet {
            moveCount += 1
        }
    }

    init(board: Board, tilesToWin: Int) {
        self.board = board
        self.tilesToWin = tilesToWin
    }

    func dropTile(inColumn column: Int) {
        if let tile = board.addTile(inColumn: column, forState: state.currentTile) {
            updateState(newTile: tile)
        }
    }

    private func updateState(newTile: Tile) {
        let winCheckResult = WinChecker(board: board, winningTile: newTile, moveCount: moveCount, tilesToWin: tilesToWin).result
        switch winCheckResult {
        case .win(let tileState):
            state = .gameOver(.win(tileState))
        case .draw:
            state = .gameOver(.draw)
        case .inProgress:
            state = state.nextTurn()
        }
    }
}

extension BoardViewModel {
    func resetGame() {
        board = Board(columns: config.columns, rows: config.rows)
        state = .playerOneTurn
        moveCount = 0
    }
}
