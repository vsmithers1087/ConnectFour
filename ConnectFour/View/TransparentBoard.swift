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

    var showAlert: Bool {
        if viewModel.state == .playerOneTurn ||
            viewModel.state == .playerTwoTurn {
            return false
        }
        return true
    }

    var body: some View {
        HStack {
            if showAlert {
                GameOverAlert(viewModel: viewModel)
            } else {
                ForEach(0..<viewModel.board.columnCount) {
                    Column(boardViewModel: self.viewModel, tiles: self.viewModel.board.tilesFor(column: $0).reversed())
                }
            }
        }.background(Color.clear)
            .padding()
            .aspectRatio(1, contentMode: .fit)
    }
}
