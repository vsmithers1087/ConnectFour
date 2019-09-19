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
    var color: Color
    var image: Image
    var action: () -> Void

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
                self.dropping = false
                self.action()
            }
        }) {
             image.foregroundColor(color)
        }
        .offset(x: 0, y: dropping ? 100 : 0)
            .shadow(color: Color.purple, radius: 1, x: 1, y: 1)
            .scaleEffect(expand ? 2.5: 3.5)
            .animation(animation).onAppear {
                self.expand.toggle()
        }
    }
    
    
}
