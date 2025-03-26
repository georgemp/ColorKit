//
//  PlatformImage.swift
//  ColorKit
//
//  Created by George Philip Malayil on 23/03/25.
//

#if os(macOS) && !targetEnvironment(macCatalyst)
import AppKit
public typealias PlatformImage = NSImage
public typealias PlatformColor = NSColor
#elseif os(iOS) || os(visionOS)
import UIKit
public typealias PlatformImage = UIImage
public typealias PlatformColor = UIColor
#endif

