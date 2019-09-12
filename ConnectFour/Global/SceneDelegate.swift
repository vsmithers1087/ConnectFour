//
//  SceneDelegate.swift
//  ConnectFour
//
//  Created by Vincent Smithers on 08.07.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import UIKit
import SwiftUI

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var viewModel = BoardViewModel(columns: config.columns, rows: config.rows)

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            if let windowScene = scene as? UIWindowScene {
                let window = UIWindow(windowScene: windowScene)
                
                /// Wrap initial viewModel in binding
                let binding = Binding.init(get: { [unowned self] in
                    return self.viewModel
                }) { [unowned self] (newVal) in
                    self.viewModel = newVal
                }
                
                window.rootViewController = UIHostingController(rootView: RootView(boardViewModel: binding))
                self.window = window
                window.makeKeyAndVisible()
            }
    }
}
