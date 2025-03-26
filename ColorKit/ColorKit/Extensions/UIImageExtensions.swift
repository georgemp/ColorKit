//
//  UIImageExtensions.swift
//  ColorKit
//
//  Created by Boris Emorine on 5/30/20.
//  Copyright © 2020 BorisEmorine. All rights reserved.
//

#if os(macOS) && !targetEnvironment(macCatalyst)
import AppKit
#elseif os(iOS) || os(visionOS)
import UIKit
#endif


extension PlatformImage {

    var resolution: CGSize {
    #if os(macOS) && !targetEnvironment(macCatalyst)
        guard let cgImage = self.cgImage(forProposedRect: nil, context: nil, hints: nil) else {
            return .zero
        }

        return CGSize(width: cgImage.width, height: cgImage.height)
    #elseif os(iOS) || os(visionOS)
        return CGSize(width: size.width * scale, height: size.height * scale)
    #endif
    }
    
    func resize(to targetSize: CGSize) -> PlatformImage {
    #if os(macOS) && !targetEnvironment(macCatalyst)
        guard targetSize != resolution else {
            return self
        }

        guard let rep = NSBitmapImageRep(bitmapDataPlanes: nil, pixelsWide: Int(targetSize.width), pixelsHigh: Int(targetSize.height), bitsPerSample: 8, samplesPerPixel: 4, hasAlpha: true, isPlanar: false, colorSpaceName: .calibratedRGB, bytesPerRow: 0, bitsPerPixel: 0) else {
            return self
        }
            rep.size = targetSize;

        NSGraphicsContext.saveGraphicsState()
        NSGraphicsContext.current = NSGraphicsContext(bitmapImageRep: rep)
        NSGraphicsContext.current?.imageInterpolation = .none
        self.draw(in: NSMakeRect(0, 0, targetSize.width, targetSize.height), from: .zero, operation: .copy, fraction: 1.0)
        NSGraphicsContext.restoreGraphicsState()

        let newImage = NSImage(size: targetSize)
        newImage.addRepresentation(rep)
        return newImage;
    #elseif os(iOS) || os(visionOS)
        guard targetSize != resolution else {
            return self
        }

        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        format.opaque = true
        let renderer = UIGraphicsImageRenderer(size: targetSize, format: format)
        let resizedImage = renderer.image { _ in
            self.draw(in: CGRect(origin: CGPoint.zero, size: targetSize))
        }

        return resizedImage
    #endif
    }
    
}
