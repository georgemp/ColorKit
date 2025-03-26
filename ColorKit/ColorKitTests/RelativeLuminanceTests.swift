//
//  RelativeLuminanceTests.swift
//  ColorKitTests
//
//  Created by Boris Emorine on 3/13/20.
//  Copyright © 2020 BorisEmorine. All rights reserved.
//

import XCTest
@testable import ColorKit

class RelativeLuminanceTests: XCTestCase {

    func testWhite() {
        let color = PlatformColor.white
        XCTAssertEqual(color.relativeLuminance, 1.0)
    }
    
    func testBlack() {
        let color = PlatformColor.black
        XCTAssertEqual(color.relativeLuminance, 0.0)
    }
    
    func testOrange() {
        let color = PlatformColor(red: 98.0 / 255.0, green: 44.0 / 255.0, blue: 8.0 / 255.0, alpha: 1.0)
        XCTAssertEqual(color.relativeLuminance, 0.044)
    }
    
    func testPurple() {
        let color = PlatformColor(red: 120 / 255.0, green: 90.0 / 255.0, blue: 200.0 / 255.0, alpha: 1.0)
        XCTAssertEqual(color.relativeLuminance, 0.155)
    }
    
}
