//
//  WinChecker.swift
//  PrototypeII
//
//  Created by Vincent Smithers on 14.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import Foundation

enum GameResult {
    case win(TileState)
    case draw
    case inProgress
}

struct WinChecker {
    
    let board: Board
    let winningTile: Tile
    let moveCount: Int
    var result: GameResult {
        return checkEndGame()
    }
    
    private func checkEndGame() -> GameResult {
        let horizontals = board.tilesFor(row: winningTile.row)
        let verticals = board.tilesFor(column: winningTile.column)
        let diagnolsAscending = board.tilesFor(diagnol: .acending, column: winningTile.column, row: winningTile.row)
        let diagnolsDescending = board.tilesFor(diagnol: .descending, column: winningTile.column, row: winningTile.row)

        if winningTiles(horizontals) || winningTiles(verticals) || winningTiles(diagnolsAscending) || winningTiles(diagnolsDescending) {
             return .win(winningTile.state)
        }
        
        if board.tileCount == moveCount {
            return .draw
        }
        
        return .inProgress
    }
    
    private func winningTiles(_ tiles: [Tile]) -> Bool {
        guard tiles.count >= 4 else { return false }
        var count = 0
        var isWin = false
        tiles.forEach { (t) in
            count = t.state == winningTile.state ? count + 1 : 0
            if count == 4 {
                isWin = true
            }
        }
        return isWin
    }
    
}
