//
//  Tile.swift
//  PrototypeII
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct Tile: View {
    
    let column: Int
    let row: Int
    var state: TileState
    
    private var color: Color {
        switch state {
        case .playerOne, .playerTwo:
            return Color.black
        default:
            return Color.clear
        }
    }
    
    var body: some View {
        ZStack {
            color
                .blur(radius: 5, opaque: false)
            Circle()
                .fill(state.color.opacity(0.9))
                .shadow(color: Color.purple, radius: 10)
            if state.image != nil {
                state.image.blendMode(.screen)
            }
            Circle().stroke(Color.purple, lineWidth: 10)

        }.clipShape(Circle())
    }
}
