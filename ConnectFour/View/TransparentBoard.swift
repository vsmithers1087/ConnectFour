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
            ForEach(0..<viewModel.board.columnCount) {
                Column(boardViewModel: self.viewModel, tiles: self.viewModel.board.tilesFor(column: $0))
            }
        }
            .background(Color.clear)
            .padding()
            .aspectRatio(1, contentMode: .fit)
    }
}
