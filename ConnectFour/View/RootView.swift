//
//  RootView.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct RootView: View {

    @EnvironmentObject var viewModel: BoardViewModel
    
    var gameResult: GameResult? {
        if case GameState.gameOver(let result) = viewModel.state {
            return result
        }
        return nil
    }

    var body: some View {
        ZStack() {
            if gameResult != nil {
                GameOverAlert().environmentObject(viewModel)
            } else {
                Image("wallpaper").resizable()
                .shadow(color: Color.purple, radius: 50)
                TransparentBoard().environmentObject(viewModel)
            }
        }
    }
}
