// Created for XCTTestApp in 2024
// Using Swift 5.0

import XCTest

// Só funciona se chegar na View do teste
final class ExampleTestUI: XCTestCase {

    func testCheckAllUIFields() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.textFields["BTC"].waitForExistence(timeout: 0.5))
        XCTAssert(app.buttons["Convert"].waitForExistence(timeout: 0.5))
        XCTAssert(app.staticTexts["result"].waitForExistence(timeout: 0.5))
        XCTAssert(app.staticTexts["UITest"].exists)

    }
    
    func testIsAppShowingResultCorrectly() {
        
        let app = XCUIApplication()
        app.launch()
        
        let textField = app.textFields["BTC"]
        textField.tap()
        textField.typeText("1")
        
        let convertButton = app.buttons["Convert"]
        convertButton.tap()
        
        let resultField = app.staticTexts["result"].label
        XCTAssertEqual(resultField, "30570.70")
        
    }

}
