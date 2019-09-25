//
//  Tile.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct RoundTile: View {

    let state: TileState

    var body: some View {
        ZStack {
            Circle()
                .fill(state.color)
            Circle()
                .stroke(Color.purple, lineWidth: 3)
            state.image
                .foregroundColor(Color.white)
        }
    }
}
