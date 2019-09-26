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
    
    var body: some View {
        ForEach(tiles) {
            RoundTile(state: $0.state)
        }
    }
}
