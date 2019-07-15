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
    var tileState: TileState
    
    var column: Int {
        guard let c = tiles.first?.column else {
            fatalError("Something went wrong no column for tile")
        }
        return c
    }
    
    var body: some View {
        VStack {
            FloatingButton(tileState: tileState) {
                self.boardViewModel.dropTile(inColumn: self.column)
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
            tiles[5]
            tiles[4]
            tiles[3]
            tiles[2]
            tiles[1]
            tiles[0]
            }.background(Color.clear)
    }
}
