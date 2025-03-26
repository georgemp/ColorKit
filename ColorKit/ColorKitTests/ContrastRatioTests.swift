//
//  ContrastRatioTests.swift
//  ColorKitTests
//
//  Created by Boris Emorine on 3/13/20.
//  Copyright © 2020 BorisEmorine. All rights reserved.
//

import XCTest
@testable import ColorKit

class ContrastRatioTests: XCTestCase {

    func testBlackWhite() {
        let color = PlatformColor.white
        let backgroundColor = PlatformColor.black
        let contrastRatioResult = color.contrastRatio(with: backgroundColor)
        XCTAssertEqual(contrastRatioResult.associatedValue, 21.0)
    }
    
    func testWhiteBlack() {
        let color = PlatformColor.black
        let backgroundColor = PlatformColor.white
        let contrastRatioResult = color.contrastRatio(with: backgroundColor)
        XCTAssertEqual(contrastRatioResult.associatedValue, 21.0)
    }
    
    func testOrangeOrangeClose() {
        let color = PlatformColor(red: 243.0 / 255.0, green: 120.0 / 255.0, blue: 9.0 / 255.0, alpha: 1.0)
        let backgroundColor = PlatformColor(red: 222.0 / 255.0, green: 100.0 / 255.0, blue: 10.0 / 255.0, alpha: 1.0)
        let contrastRatioResult = color.contrastRatio(with: backgroundColor)
        XCTAssertEqual(contrastRatioResult.associatedValue, 1.26)
    }
    
    func testOrangeOrange() {
        let color = PlatformColor(red: 243.0 / 255.0, green: 120.0 / 255.0, blue: 9.0 / 255.0, alpha: 1.0)
        let backgroundColor = PlatformColor(red: 243.0 / 255.0, green: 120.0 / 255.0, blue: 9.0 / 255.0, alpha: 1.0)
        let contrastRatioResult = color.contrastRatio(with: backgroundColor)
        XCTAssertEqual(contrastRatioResult.associatedValue, 1.0)
    }
    
    func testGreenPurple() {
        let green = PlatformColor(red: 0.0 / 255.0, green: 255.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0)
        let blue = PlatformColor(red: 0.0 / 255.0, green: 0.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
        let contrastRatioResult = green.contrastRatio(with: blue)
        XCTAssertEqual(contrastRatioResult.associatedValue, 6.27)
    }

}
