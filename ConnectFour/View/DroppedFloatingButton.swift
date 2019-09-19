//
//  DroppedFloatingButton.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 19.09.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import SwiftUI

struct DroppedFloatingButton: Shape {
    
    let button: FloatingButton
    let numberOfSpots: CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        let width = rect.size.width
        let height = rect.size.height
        let center = CGPoint(x: width / 2.0, y: height / 2.0)
        let endCenter = CGPoint(x: center.x, y: center.y + numberOfSpots)
        
        var path = Path(rect)
        path.move(to: center)
        path.addLine(to: endCenter)
        
        return path
    }
}
