//
//  FloatingButton.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct PulsingButton: View {

    @State private var expand = false
    @State private var dropping = false
    let tileState: TileState
    let action: () -> Void
    private let animations = PulsingButtonAnimations()

    var body: some View {
        Button(action: {
            withAnimation(self.animations.dropAnimation) {
                self.dropping = true
                self.expand.toggle()
            }
            withAnimation(self.animations.actionAnimation) {
                self.action()
                self.dropping = false
            }
            withAnimation(self.animations.pulseAnimation) {
                self.expand.toggle()
            }
        }) {
            RoundTile(state: tileState)
        }
        .offset(x: 0, y: dropping ? 300 : 0)
        .scaleEffect(expand ? 0.85 : 1.1)
        .animation(animations.pulseAnimation).onAppear {
            self.expand.toggle()
        }
    }
    
    
}
