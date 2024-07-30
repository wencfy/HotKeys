//
//  File.swift
//  
//
//  Created by wallace wen on 2024/6/30.
//

import Foundation
import AppKit

public struct KeyCombo: Equatable {
    public var key: Key?
    public var modifiers: NSEvent.ModifierFlags
    
    public init(key: Key, modifiers: NSEvent.ModifierFlags) {
        self.key = key
        self.modifiers = modifiers
    }
}

extension KeyCombo: CustomStringConvertible {
    public var description: String {
        var output = modifiers.description
        
        if let keyDesc = key?.rawValue {
            output += keyDesc
        }
        
        return output
    }
}
