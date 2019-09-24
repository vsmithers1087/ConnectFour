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
    let title: String?

    var body: some View {
        VStack {
            Text(title ?? "")
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .frame(width: 300, height: 300, alignment: .center)
                .background(Color.red)
                .clipShape(Circle())
                .offset(x: 0, y: 50)
            Button(action: {
                self.viewModel.resetGame()
            }) {
                Text("Reset Game")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
            }.offset(x: 0, y: 50)
        }
    }
}
