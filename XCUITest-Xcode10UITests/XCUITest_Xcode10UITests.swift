//
//  XCUITest_Xcode10UITests.swift
//  XCUITest-Xcode10UITests
//
//  Created by Shashikant Jagtap on 23/09/2018.
//  Copyright © 2018 Shashikant Jagtap. All rights reserved.
//

import XCTest

class XCUITest_Xcode10UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRecorded() {
        
        let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.buttons["Enter"]/*[[".buttons[\"ENTER\"]",".buttons[\"Enter\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.staticTexts["Welcome to XCUITest"].tap()
        
    }
    
    func testRefactored() {
        XCUIApplication().buttons["Enter"].tap()
        XCTAssert(XCUIApplication().staticTexts["Welcome to XCUITest"].exists)
    }
    
}
