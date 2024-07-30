//
//  Key.swift
//
//
//  Created by wallace wen on 2024/6/30.
//

import Foundation

public enum Key: String {
    
    // MARK: - Letters
    case a = "A"
    case b = "B"
    case c = "C"
    case d = "D"
    case e = "E"
    case f = "F"
    case g = "G"
    case h = "H"
    case i = "I"
    case j = "J"
    case k = "K"
    case l = "L"
    case m = "M"
    case n = "N"
    case o = "O"
    case p = "P"
    case q = "Q"
    case r = "R"
    case s = "S"
    case t = "T"
    case u = "U"
    case v = "V"
    case w = "W"
    case x = "X"
    case y = "Y"
    case z = "Z"
    
    // MARK: - Numbers
    case zero   = "0"
    case one    = "1"
    case two    = "2"
    case three  = "3"
    case four   = "4"
    case five   = "5"
    case six    = "6"
    case seven  = "7"
    case eight  = "8"
    case nine   = "9"
    
    // MARK: - Symbols
    case period = "."
    case quote = "\""
    case rightBracket = "]"
    case semicolon = ";"
    case slash = "/"
    case backslash = "\\"
    case comma = ","
    case equal = "="
    case grave = "`"
    case leftBracket = "["
    case minus = "-"
    
    // MARK: - Whitespace
    case space = ""
    case tab
    case `return`
    
    // MARK: - Modifiers
    case command = "⌘"
    case rightCommand
    case option = "⌥"
    case rightOption
    case control = "⌃"
    case rightControl
    case shift = "⇧"
    case rightShift
    case function = "fn"
    case capsLock = "⇪"
    
    // MARK: - Navigation
    case pageUp
    case pageDown
    case home
    case end
    case upArrow
    case rightArrow
    case downArrow
    case leftArrow
    
    // MARK: - Functions
    case f1
    case f2
    case f3
    case f4
    case f5
    case f6
    case f7
    case f8
    case f9
    case f10
    case f11
    case f12
    case f13
    case f14
    case f15
    case f16
    case f17
    case f18
    case f19
    case f20
    
    // MARK: - Keypad
    case keypad0
    case keypad1
    case keypad2
    case keypad3
    case keypad4
    case keypad5
    case keypad6
    case keypad7
    case keypad8
    case keypad9
    case keypadClear
    case keypadDecimal
    case keypadDivide
    case keypadEnter
    case keypadEquals
    case keypadMinus
    case keypadMultiply
    case keypadPlus
    
    // MARK: - Misc
    case escape
    case delete
    case forwardDelete
    case help
    case volumeUp
    case volumeDown
    case mute
}


