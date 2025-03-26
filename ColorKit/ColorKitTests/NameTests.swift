//
//  NameTests.swift
//  ColorKitTests
//
//  Created by Boris Emorine on 12/9/20.
//  Copyright © 2020 BorisEmorine. All rights reserved.
//

import XCTest
import ColorKit

class NameTests: XCTestCase {

    func testPrimaryExact() {
        let color = PlatformColor.blue
        XCTAssertEqual(color.name().components(separatedBy: ".").last, "blue")
    }
    
    func testSecondaryExact() {
        let color = PlatformColor.purple
        XCTAssertEqual(color.name().components(separatedBy: ".").last, "violet")
    }
    
    func testTertiaryExact() {
        let color = PlatformColor(red: 0.5, green: 1.0, blue: 0.0, alpha: 1.0)
        XCTAssertEqual(color.name().components(separatedBy: ".").last, "chartreuse")
    }
    
    func testClose() {
        let color = PlatformColor(red: 0.9, green: 0.0, blue: 0.0, alpha: 1.0)
        XCTAssertEqual(color.name().components(separatedBy: ".").last, "red")
    }
    
    func testBlack() {
        let color = PlatformColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        XCTAssertEqual(color.name().components(separatedBy: ".").last, "black")
    }
    
    func testWhite() {
        let color = PlatformColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        XCTAssertEqual(color.name().components(separatedBy: ".").last, "white")
    }
    
    func testGray() {
        let color = PlatformColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
        XCTAssertEqual(color.name().components(separatedBy: ".").last, "gray")
    }
    
    func testDarkGray() {
        let color = PlatformColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        XCTAssertEqual(color.name().components(separatedBy: ".").last, "gray")
    }
    
    func testLightGray() {
        let color = PlatformColor(red: 0.7, green: 0.7, blue: 0.7, alpha: 1.0)
        XCTAssertEqual(color.name().components(separatedBy: ".").last, "gray")
    }
    
    func testRandom() {
        let color = PlatformColor.random()
        XCTAssertNotNil(color.name())
    }
    
}
