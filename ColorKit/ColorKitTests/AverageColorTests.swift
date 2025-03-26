//
//  AverageColorTests.swift
//  ColorKitTests
//
//  Created by Boris Emorine on 5/15/20.
//  Copyright © 2020 BorisEmorine. All rights reserved.
//

import XCTest
@testable import ColorKit

class AverageColorTests: XCTestCase {
    
    static let tolerance: CGFloat = 0.5
    
    /// It should compute a green average color for a green image.
    func testGreenImage() throws {
        let image = loadImage(named: "Green_Square.jpg")
        let averageColor = try image.averageColor()
        
        let distance = averageColor.difference(from: PlatformColor.green)
        XCTAssertLessThan(distance.associatedValue, AverageColorTests.tolerance)
    }
    
    /// It should compute a purple average color for a purple image.
    func testPurpleImage() throws {
        let image = loadImage(named: "Purple_Square.jpg")
        let averageColor = try image.averageColor()
        
        let expectedPurple = PlatformColor(red: 208.0 / 255.0, green: 0.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
        let distance = averageColor.difference(from: expectedPurple)
        XCTAssertLessThan(distance.associatedValue, AverageColorTests.tolerance)
    }
    
    /// It should compute a gray average color for a black & white image.
    func testBlackWhiteImage() throws {
        let image = loadImage(named: "Black_White_Square.jpg")
        let averageColor = try image.averageColor()
        
        let expectedGray = PlatformColor(red: 188.0 / 255.0, green: 188.0 / 255.0, blue: 188.0 / 255.0, alpha: 1.0)
        let distance = averageColor.difference(from: expectedGray)
        XCTAssertLessThan(distance.associatedValue, AverageColorTests.tolerance)
    }
    
}
