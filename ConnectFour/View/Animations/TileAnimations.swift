//
//  PulsingButtonAnimations.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 20.09.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct TileAnimations {
    
    var pulseAnimation: Animation {
        Animation
            .easeInOut
            .speed(0.5)
            .delay(0.1)
            .repeatForever(autoreverses: true)
    }
    
    var dropAnimation: Animation {
        Animation
            .easeOut(duration: 1.0)
            .repeatCount(1, autoreverses: true)
    }
}
