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
    let distanceToDrop: CGFloat
    let action: () -> Void
    private let animations = PulsingButtonAnimations()

    var body: some View {
        Button(action: {
            withAnimation(self.animations.dropAnimation) {
                self.action()
                self.dropping.toggle()
            }
        }) {
            RoundTile(state: tileState)
        }
        .offset(x: 0, y: dropping ? distanceToDrop : 0)
        .opacity(dropping ? 0 : 1.0)
        .scaleEffect(expand ? 0.85 : 1.1)
        .animation(animations.pulseAnimation).onAppear {
            self.expand.toggle()
        }
    }
}
