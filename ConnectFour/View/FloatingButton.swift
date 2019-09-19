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
    var color: Color
    var action: () -> Void

    var animation: Animation {
        Animation.spring(response: 1)
            .speed(1)
            .repeatForever(autoreverses: false)
    }
    
    var dropAnimation: Animation {
        Animation.spring(response: 0.1)
            .speed(1)
    }

    var body: some View {
        Button(action: {
            withAnimation(self.dropAnimation) {
                self.action()
            }
        }) {
            Image(systemName: "play.circle")
                .foregroundColor(color)
            }
            .shadow(color: Color.purple, radius: 1, x: 1, y: 1)
            .rotationEffect(Angle(degrees: 90))
            .scaleEffect(expand ? 2.5: 3.5)
            .animation(animation).onAppear {
                self.expand.toggle()
        }
    }
}
