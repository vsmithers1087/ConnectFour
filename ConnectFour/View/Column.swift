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
    
    private var availableSpace: CGFloat {
        let vacant = tiles.filter({ $0.state == .vacant })
        return CGFloat(vacant.count)
    }

    var body: some View {
        VStack {
            GeometryReader { geo in
                PulsingButton(tileState: self.tileState,
                              distanceToDrop: (geo.size.height * 1.07) * self.availableSpace) {
                    self.boardViewModel.dropTile(inColumn: self.column)
                }
            }
            ForEach(tiles) {
                RoundTile(state: $0.state)
            }
        }.background(Color.clear)
    }
}
