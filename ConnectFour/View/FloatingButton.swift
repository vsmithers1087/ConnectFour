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
    var tileState: TileState
    var action: () -> Void
    
    var animation: Animation {
        Animation.spring(initialVelocity: 1)
            .speed(1)
            .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            Image(systemName: "play.circle")
                .foregroundColor(tileState.color)
            }
            .shadow(color: Color.purple, radius: 1, x: 1, y: 1)
            .rotationEffect(Angle(degrees: 90))
            .scaleEffect(expand ? 2.5: 3.5)
            .animation(animation).onAppear {
                self.expand.toggle()
        }
    }
}

