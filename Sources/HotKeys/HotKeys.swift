// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import AppKit

public class HotKey: Equatable {
    public typealias Handler = () -> Void
    
    let identifier = UUID()
    
    public var keyCombo: KeyCombo
    public var keyDownHandler: Handler?
    public var keyUpHandler: Handler?
    
    public static func == (lhs: HotKey, rhs: HotKey) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    public init(keyCombo: KeyCombo, keyDownHandler: Handler? = nil, keyUpHandler: Handler? = nil) {
        self.keyCombo = keyCombo
        self.keyDownHandler = keyDownHandler
        self.keyUpHandler = keyUpHandler
        
        HotKeysController.register(self)
    }
    
    public convenience init(key: Key, modifiers: NSEvent.ModifierFlags, keyDownHandler: Handler? = nil, keyUpHandler: Handler? = nil) {
            let keyCombo = KeyCombo(key: key, modifiers: modifiers)
            self.init(keyCombo: keyCombo, keyDownHandler: keyDownHandler, keyUpHandler: keyUpHandler)
    }
    
    static public func checkAccessibility() -> Bool {
        return AXIsProcessTrustedWithOptions(
            [kAXTrustedCheckOptionPrompt.takeUnretainedValue() as String: true] as CFDictionary
        )
    }
}
