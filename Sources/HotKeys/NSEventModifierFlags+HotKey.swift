//
//  File.swift
//  
//
//  Created by wallace wen on 2024/7/1.
//

import Foundation
import AppKit

extension NSEvent.ModifierFlags: CustomStringConvertible {
    public var description: String {
        var output = ""
        
        if self.contains(.control) {
            output += Key.control.rawValue
        }
        
        if self.contains(.option) {
            output += Key.option.rawValue
        }
        
        if self.contains(.shift) {
            output += Key.shift.rawValue
        }
        
        if self.contains(.command) {
            output += Key.command.rawValue
        }
        
        return output
    }
}
