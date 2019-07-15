//
//  Column.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct Column: View {
    
    @ObjectBinding var boardViewModel: BoardViewModel
    var tiles: [Tile]
    
    var column: Int {
        guard let c = tiles.first?.column else {
            fatalError("Something went wrong no column for tile")
        }
        return c
    }
    
    var body: some View {
        VStack {
            FloatingButton(tileState: boardViewModel.state.currentTile) {
                self.boardViewModel.dropTile(inColumn: self.column)
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
            ForEach((0...5).reversed()) {
                self.tiles[$0]
            }
        }.background(Color.clear)
    }
}
