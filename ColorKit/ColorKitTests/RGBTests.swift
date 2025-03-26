//
//  RGBTests.swift
//  ColorKitTests
//
//  Created by Boris Emorine on 2/24/20.
//  Copyright © 2020 BorisEmorine. All rights reserved.
//

import XCTest
@testable import ColorKit

class RGBTests: XCTestCase {
    
    func testRed() {
        let red = PlatformColor.red
        XCTAssertEqual(red.red, 1.0)
        XCTAssertEqual(red.green, 0.0)
        XCTAssertEqual(red.blue, 0.0)
        XCTAssertEqual(red.alpha, 1.0)
    }
    
    func testGreen() {
        let green = PlatformColor.green
        XCTAssertEqual(green.red, 0.0)
        XCTAssertEqual(green.green, 1.0)
        XCTAssertEqual(green.blue, 0.0)
        XCTAssertEqual(green.alpha, 1.0)
    }

    func testBlue() {
        let blue = PlatformColor.blue
        XCTAssertEqual(blue.red, 0.0)
        XCTAssertEqual(blue.green, 0.0)
        XCTAssertEqual(blue.blue, 1.0)
        XCTAssertEqual(blue.alpha, 1.0)
    }
    
    func testWhite() {
        let blue = PlatformColor.white
        XCTAssertEqual(blue.red, 1.0)
        XCTAssertEqual(blue.green, 1.0)
        XCTAssertEqual(blue.blue, 1.0)
        XCTAssertEqual(blue.alpha, 1.0)
    }
    
    func testBlack() {
        let blue = PlatformColor.black
        XCTAssertEqual(blue.red, 0.0)
        XCTAssertEqual(blue.green, 0.0)
        XCTAssertEqual(blue.blue, 0.0)
        XCTAssertEqual(blue.alpha, 1.0)
    }
    
    func testGray() {
        let blue = PlatformColor.gray
        XCTAssertEqual(blue.red, 0.5)
        XCTAssertEqual(blue.green, 0.5)
        XCTAssertEqual(blue.blue, 0.5)
        XCTAssertEqual(blue.alpha, 1.0)
    }
    
    func testPurple() {
        let blue = PlatformColor.purple
        XCTAssertEqual(blue.red, 0.5)
        XCTAssertEqual(blue.green, 0.0)
        XCTAssertEqual(blue.blue, 0.5)
        XCTAssertEqual(blue.alpha, 1.0)
    }

}
