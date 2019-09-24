//
//  Board.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct TransparentBoard: View {

    @EnvironmentObject var viewModel: BoardViewModel

    var body: some View {
        HStack {
            ForEach(0..<viewModel.board.columnCount) {
                Column(tiles: self.viewModel.board.tilesFor(column: $0).reversed(),
                       column: $0,
                       tileState: self.viewModel.state.currentTile)
                    .environmentObject(self.viewModel)
            }
        }.background(Color.clear)
            .padding()
            .aspectRatio(1, contentMode: .fit)
    }
}
