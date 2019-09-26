//
//  GameOverAlert.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 15.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct GameOverAlert: View {

    @EnvironmentObject var viewModel: BoardViewModel
    let title: String
    let tileState: TileState

    var body: some View {
        VStack {
            VStack {
                Text(title)
                    .foregroundColor(config.primaryColor)
                    .font(.largeTitle).bold()
                RoundTile(state: tileState)
                    .frame(width: 100, height: 100, alignment: .center)
            }
            RoundedButton(title: "Reset Game",
                          backgroundColor: config.primaryColor,
                          foregroundColor: config.secondaryColor,
                          font: .largeTitle) { self.viewModel.resetGame() }
            .offset(x: 0, y: 50)
        }
    }
}
