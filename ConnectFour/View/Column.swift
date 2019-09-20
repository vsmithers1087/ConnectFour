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
    let tileState: TileState

    var body: some View {
        VStack {
            PulsingButton(tileState: tileState) {
                self.boardViewModel.dropTile(inColumn: self.column)
            }
            ForEach(tiles) {
                RoundTile(state: $0.state)
            }
        }.background(Color.clear)
    }
}
