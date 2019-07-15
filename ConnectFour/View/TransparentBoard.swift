//
//  Board.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct TransparentBoard: View {
    
    @ObjectBinding var viewModel: BoardViewModel
    var body: some View {
        HStack {
            Column(boardViewModel: viewModel, tiles: viewModel.board.tilesFor(column: 0), tileState: .playerOne)
            Column(boardViewModel: viewModel, tiles: viewModel.board.tilesFor(column: 1), tileState: .playerOne)
            Column(boardViewModel: viewModel, tiles: viewModel.board.tilesFor(column: 2), tileState: .playerOne)
            Column(boardViewModel: viewModel, tiles: viewModel.board.tilesFor(column: 3), tileState: .playerOne)
            Column(boardViewModel: viewModel, tiles: viewModel.board.tilesFor(column: 4), tileState: .playerOne)
            Column(boardViewModel: viewModel, tiles: viewModel.board.tilesFor(column: 5), tileState: .playerOne)
            Column(boardViewModel: viewModel, tiles: viewModel.board.tilesFor(column: 6), tileState: .playerOne)
            }.background(Color.clear)
            .padding()
            .aspectRatio(1, contentMode: .fit)
    }
}
