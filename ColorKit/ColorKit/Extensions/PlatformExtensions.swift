//
//  ColorExtensions.swift
//  ColorKit
//
//  Created by George Philip Malayil on 24/03/25.
//

#if os(macOS) && !targetEnvironment(macCatalyst)
import AppKit
#elseif os(iOS) || os(visionOS)
import UIKit
#endif

extension PlatformImage {
    var ciImage: CIImage? {
    #if os(macOS) && !targetEnvironment(macCatalyst)
        guard let cgImage = self.cgImage(forProposedRect: nil, context: nil, hints: nil) else {
            return nil
        }
        let ciImage = CIImage(cgImage: cgImage)
        return ciImage
    #elseif os(iOS) || os(visionOS)
        return CIImage(image: self)
    #endif
    }

    #if os(macOS) && !targetEnvironment(macCatalyst)
    var cgImage: CGImage? {
        self.cgImage(forProposedRect: nil, context: nil, hints: nil)
    }
    #endif
}

extension PlatformColor {
    var ciColor: CIColor {
    #if os(macOS) && !targetEnvironment(macCatalyst)
        CIColor(color: self)!
    #elseif os(iOS) || os(visionOS)
        CIColor(color: self)
    #endif
    }
}
