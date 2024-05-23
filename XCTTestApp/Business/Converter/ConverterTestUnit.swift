// Created for XCTTestApp in 2024
// Using Swift 5.0

import XCTest
//@testable import XCTTestApp

final class ConverterTestUnit: XCTestCase {

    var converter : Converter?
    
    override func setUpWithError() throws {
        converter = Converter()
    }
    
    override func tearDownWithError() throws {
        converter = nil
    }
    
    func testBTCtoUSDconverter() {
        let converter = Converter()
        
        let btc = 2.0
        
        let usd = converter.btcToUsd(btc: btc)
        let expected = "30570.70"
        
        XCTAssertEqual(usd, expected, "Test Failed")
    }
    
    func testBTCtoUSDconverterForNegative() {
        let converter = Converter()
        
        let btc = -5.0
        
        let usd = converter.btcToUsd(btc: btc)
        let expected = "Please enter a positive number."
        
        XCTAssertEqual(usd, expected, "Test Failed")
    }

}
