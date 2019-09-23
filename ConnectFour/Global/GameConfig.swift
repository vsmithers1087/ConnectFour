//
//  PlayerConfig.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 11.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import Foundation
import SwiftUI

struct GameConfig {
    let playerOneColor: Color
    let playerTwoColor: Color
    let vacantColor: Color
    let columns: Int
    let rows: Int
    let tilesToWin: Int
}

let config = GameConfig(playerOneColor: Color.orange,
                        playerTwoColor: Color.blue,
                        vacantColor: Color.clear,
                        columns: 7,
                        rows: 6,
                        tilesToWin: 4)
