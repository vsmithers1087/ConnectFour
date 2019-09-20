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
            .repeatForever(autoreverses: false)
    }
       
    var dropAnimation: Animation {
        Animation
            .easeIn
            .speed(2)
    }
       
    var actionAnimation: Animation {
        Animation
            .easeIn
            .speed(0.5)
            .delay(0.5)
    }
}
