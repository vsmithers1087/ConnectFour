//
//  Tile.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct RoundTile: View {

    let model: Tile

    var body: some View {
        ZStack {
            Circle()
                .fill(model.state.color).blendMode(.hue)
            Circle()
                .stroke(Color.purple, lineWidth: 5)
            model.state.image?.foregroundColor(Color.white)
        }
    }
}
