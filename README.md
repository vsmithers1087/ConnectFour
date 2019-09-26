# ConnectFour

A simple Connect Four game which I hope demonstrates the basics of SwiftUI and Combine beyond a typical list-based application. Through this project, I have learned that the upsides of using SwiftUI outside of an orthodox single view application are pretty great. 

While still a work in progress, by viewing this demo it is possible to see in practice the basic of animations and reusing simple components to build more complex custom user interfaces, as well as UITests with SwiftUI, and Xcode 11 Test Plans.

You can modify the configuration in `SceneDelegate.swift` to change everything from the appearance to board dimensions, and the number of tiles required to win.
```swift
let config = GameConfig(playerOneConfig: PlayerConfig(color: .orange, image: Image(systemName: "tortoise")),
                        playerTwoConfig: PlayerConfig(color: .blue, image: Image(systemName: "hare")),
                        columns: 7,
                        rows: 6,
                        tilesToWin: 4,
                        primaryColor: .purple,
                        secondaryColor: .white


```

