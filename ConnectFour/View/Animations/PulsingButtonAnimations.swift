//
//  PulsingButtonAnimations.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 20.09.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct PulsingButtonAnimations {
    
    var pulseAnimation: Animation {
        Animation
            .easeInOut
            .speed(0.5)
            .delay(0.1)
            .repeatForever(autoreverses: true)
    }
    
    var dropAnimation: Animation {
           Animation
            .easeOut(duration: 0.5)
    }
}
