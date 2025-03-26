//
//  ComplementaryColorTests.swift
//  ColorKitTests
//
//  Created by Boris Emorine on 3/18/20.
//  Copyright © 2020 BorisEmorine. All rights reserved.
//

import XCTest
import ColorKit

class ComplementaryColorTests: XCTestCase {

    func testBlack() {
        let black = PlatformColor.black
        let complementaryColor = black.complementaryColor
        XCTAssertEqual(complementaryColor, PlatformColor(red: 1, green: 1, blue: 1, alpha: 1.0))
    }
    
    func testWhite() {
        let white = PlatformColor.white
        let complementaryColor = white.complementaryColor
        XCTAssertEqual(complementaryColor, PlatformColor(red: 0, green: 0, blue: 0, alpha: 1.0))
    }
    
    func testBlue() {
        let blue = PlatformColor.blue
        let complementaryColor = blue.complementaryColor
        XCTAssertEqual(complementaryColor, PlatformColor(red: 255.0 / 255.0, green: 255.0 / 255.0, blue: 0, alpha: 1.0))
    }
    
    func testYellow() {
        let yellow = PlatformColor(red: 255.0 / 255.0, green: 255.0 / 255.0, blue: 0, alpha: 1.0)
        let complementaryColor = yellow.complementaryColor
        XCTAssertEqual(complementaryColor, PlatformColor.blue)
    }
    
    func testRed() {
        let red = PlatformColor.red
        let complementaryColor = red.complementaryColor
        XCTAssertEqual(complementaryColor, PlatformColor(red: 0.0 / 255.0, green: 255.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0))
    }
        
}
