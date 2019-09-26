//
//  CurrentPlayerLabel.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 26.09.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct CurrentPlayerLabel: View {
    
    let gameState: GameState
    var body: some View {
        HStack {
            RoundTile(state: gameState.currentTile)
                .frame(width: 75, height: 75)
            Text(gameState.title)
                .foregroundColor(config.secondaryColor).font(.largeTitle)
        }
    }
}
