//
//  PlatformHelpers.swift
//  ColorKit
//
//  Created by George Philip Malayil on 24/03/25.
//

#if os(macOS) && !targetEnvironment(macCatalyst)
import AppKit
#elseif os(iOS) || os(visionOS)
import UIKit
#endif
@testable import ColorKit

func loadImage(named name: String) -> PlatformImage {
    let nameComponents = name.components(separatedBy: ".")
    let ext = nameComponents.count == 2 ? nameComponents.last! : nil
    let filename = nameComponents.first!
    let imageUrl = Bundle.module.url(forResource: filename, withExtension: ext)!
    return PlatformImage(contentsOfFile: imageUrl.path)!
}
