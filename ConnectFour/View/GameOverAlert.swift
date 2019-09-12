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

    var body: some View {
        VStack {
            Text("GAME OVER").foregroundColor(Color.white)
                .font(.largeTitle).frame(width: 300, height: 300, alignment: .center)
                .background(Color.red).clipShape(Circle()).offset(x: 0, y: 50)
            Button(action: {
                self.viewModel.resetGame()
            }) {
                Text("Reset Game")
                    .padding()
                    .cornerRadius(8.0)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .border(Color.blue, width: 2.0)
            }.offset(x: 0, y: 50)
        }
    }
}
