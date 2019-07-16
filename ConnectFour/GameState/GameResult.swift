//
//  GameResult.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 16.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import Foundation

enum GameResult: Equatable {
    case win(TileState)
    case draw
    case inProgress
}
