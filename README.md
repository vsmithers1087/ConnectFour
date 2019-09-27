# ConnectFour

<img width="300" alt="gameplay" src="https://user-images.githubusercontent.com/12777139/65696432-7f205200-e079-11e9-8e3e-9af0fe78ee27.png">

[Screen Recording of Gameplay]()

## About

A simple Connect Four built entirely with SwiftUI. Through this project, I have learned that the upsides of using SwiftUI outside of an orthodox single view application are pretty great. While still a work in progress, by viewing this demo it is possible to see in practice the basic of animations and reusing simple components to build more complex custom user interfaces, as well as UITests with SwiftUI, and Xcode 11 Test Plans.

You can modify the configuration in `Config.swift` to change everything from the appearance to board dimensions, and the number of tiles required to win.
```swift
let config = GameConfig(playerOneConfig: PlayerConfig(color: .orange, image: Image(systemName: "tortoise")),
                        playerTwoConfig: PlayerConfig(color: .blue, image: Image(systemName: "hare")),
                        columns: 7,
                        rows: 6,
                        tilesToWin: 4,
                        primaryColor: .purple,
                        secondaryColor: .white,
                        backgroundImage: Image("wallpaper"))

```

