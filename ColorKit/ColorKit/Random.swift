//
//  Random.swift
//  ColorKit
//
//  Created by Boris Emorine on 5/5/20.
//  Copyright © 2020 BorisEmorine. All rights reserved.
//

#if os(macOS) && !targetEnvironment(macCatalyst)
import AppKit
#elseif os(iOS) || os(visionOS)
import UIKit
#endif

extension PlatformColor {

    /// Generates a random `UIColor` or `NSColor` instance.
    /// - Parameters:
    ///   - randomizeAlpha: Whether the alpha channel should also be randomized. If set to false (default), the alpha will be set to 1.0.
    public static func random(randomizeAlpha: Bool = false) -> PlatformColor {
        let r = CGFloat.random(in: 0...255) / 255.0
        let g = CGFloat.random(in: 0...255) / 255.0
        let b = CGFloat.random(in: 0...255) / 255.0
        let a = randomizeAlpha ? 1 : CGFloat.random(in: 0...1)
        
        return PlatformColor(red: r, green: g, blue: b, alpha: a)
    }
    
}
