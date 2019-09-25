//
//  TileState.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import Foundation
import SwiftUI

enum TileState {

    case playerOne
    case playerTwo
    case vacant

    var color: Color {
        switch self {
        case .playerOne:
            return config.playerOneColor
        case .playerTwo:
            return config.playerTwoColor
        case .vacant:
            return config.vacantColor
        }
    }
    
    var title: String {
        switch self {
        case .playerOne:
            return "🐒"
        case .playerTwo:
            return "🧚‍♀️"
        default:
            return ""
        }
    }

    var image: Image {
        switch self {
        case .playerOne:
            return Image(systemName: "tortoise")
        case .playerTwo:
            return Image(systemName: "hare")
        case .vacant:
            return Image(uiImage: UIImage())
        }
    }
}
