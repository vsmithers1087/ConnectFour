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
            .delay(0.5)
            .repeatForever(autoreverses: true)
            .repeatCount(0)
    }
    
    var dropAnimation: Animation {
           Animation
            .easeOut(duration: 2.0)
            .repeatCount(2, autoreverses: true)
    }
    
    var delayReset: Animation {
        Animation.easeIn.delay(2.0)
    }
}
