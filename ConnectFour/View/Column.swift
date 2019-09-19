//
//  Column.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct Column: View {

    @EnvironmentObject var boardViewModel: BoardViewModel
    let tiles: [Tile]
    let column: Int

    var body: some View {
        VStack {
            FloatingButton(color: boardViewModel.state.currentTile.color) {
                withAnimation(.easeIn(duration: 0.5)) {
                    self.boardViewModel.dropTile(inColumn: self.column)
                }
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
            ForEach(tiles) {
                RoundTile(model: $0)
            }
        }.background(Color.clear)
    }
}
