//
//  Board.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 14.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import Foundation

struct Board {
    
    enum Diagnol {
        case acending
        case descending
        
        var highSlope: (Int, Int) {
            switch self {
            case .acending:
                return (1, 1)
            case .descending:
                return (-1, 1)
            }
        }
        
        var lowSlope: (Int, Int) {
            switch self {
            case .acending:
                return (-1, -1)
            case .descending:
                return (1, -1)
            }
        }
    }
    
    private(set) var tiles = [[Tile]]()
    
    init(columns: Int, rows: Int) {
        for column in 0..<columns {
            var c = [Tile]()
            for row in 0..<rows {
                c.append(Tile(column: column, row: row, state: .vacant))
            }
            tiles.append(c)
        }
    }
    
    var tileCount: Int {
        return tiles.count * tiles[0].count
    }
    
    func tilesFor(row: Int) -> [Tile] {
        (0..<tiles.count).map({ tiles[$0][row] })
    }
    
    func tilesFor(column: Int) -> [Tile] {
        tiles[column]
    }
    
    @discardableResult
    mutating func addTile(inColumn column: Int, forState state: TileState) -> Tile? {
        if let emptyRow = tilesFor(column: column).filter({ $0.state == .vacant}).first?.row {
            let tile = Tile(column: column, row: emptyRow, state: state)
            tiles[column][emptyRow] = tile
            return tile
        }
        return nil
    }
    
    func tilesFor(diagnol: Diagnol, column: Int, row: Int) -> [Tile] {
        let tile = tiles[column][row]
        let highTiles = adjacentDiagnols(column: column, row: row, colIncrement: diagnol.highSlope.0, rowIncrement: diagnol.highSlope.1) ?? [Tile]()
        let lowTiles = adjacentDiagnols(column: column, row: row, colIncrement: diagnol.lowSlope.0, rowIncrement: diagnol.lowSlope.1) ?? [Tile]()
        return lowTiles + [tile] + highTiles
    }
    
    private func adjacentDiagnols(column: Int, row: Int,  colIncrement: Int, rowIncrement: Int) -> [Tile]? {
        guard
            row + (rowIncrement * 3) >= 0,
            row + (rowIncrement * 3) < tiles[0].count,
            column + (colIncrement * 3) >= 0,
            column + (colIncrement * 3) < tiles.count
            else {
                return nil
        }
        return [
            tiles[column + colIncrement][row + rowIncrement],
            tiles[column + (colIncrement * 2)][row + (rowIncrement * 2)],
            tiles[column + (colIncrement * 3)][row + (rowIncrement * 2)]
        ]
    }
}

extension Board {
    func log() {
        var column = 5
        for _ in 0...column {
            print("\(tiles[0][column].state.debug)\(tiles[1][column].state.debug)\(tiles[2][column].state.debug)\(tiles[3][column].state.debug)\(tiles[4][column].state.debug)\(tiles[5][column].state.debug)\(tiles[6][column].state.debug)")
            column -= 1
        }
    }
}
