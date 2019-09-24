//
//  ConnectFourUITests.swift
//  ConnectFourUITests
//
//  Created by Vincent Smithers on 24.09.19.
//  Copyright © 2019 Vincent Smithers. All rights reserved.
//

import XCTest

class ConnectFourUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
    }

    override func tearDown() {
    }

    func testIncompleteGame() {
        let app = XCUIApplication()
        app.launch()
        for _ in 0...2 {
            for element in 0...6 {
                app.buttons.element(boundBy: element).tap()
            }
        }
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
