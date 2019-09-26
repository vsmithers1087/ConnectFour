//
//  Column.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct Column: View {

    let tiles: [Tile]
    let column: Int
    let action: () -> Void
    
    var body: some View {
        VStack {
            ForEach(tiles) { tile in
                Button(action: {
                    self.action()
                }) {
                    RoundTile(state: tile.state)
                }
            }
        }.background(Color.clear)
    }
}
