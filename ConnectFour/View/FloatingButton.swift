//
//  FloatingButton.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct FloatingButton: View {

    @State private var expand = false
    @State private var dropping = false
    let tileState: TileState
    let action: () -> Void

    private var animation: Animation {
        Animation
            .spring(response: 1)
            .speed(1)
            .repeatForever(autoreverses: false)
    }
    
    private var dropAnimation: Animation {
        Animation
            .spring(response: 0.1)
            .speed(1)
    }
    
    private var actionAnimation: Animation {
        Animation.easeIn
            .speed(1)
            .delay(0.1)
    }

    var body: some View {
        Button(action: {
            withAnimation(self.dropAnimation) {
                self.dropping = true
            }
            withAnimation(self.actionAnimation) {
                self.action()
                self.dropping = false
            }
        }) {
            RoundTile(state: tileState)
        }
        .offset(x: 0, y: dropping ? 200 : 0)
        .scaleEffect(expand ? 0.85 : 1.1)
        .animation(animation).onAppear {
            self.expand.toggle()
        }
    }
    
    
}
