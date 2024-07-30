//
//  File.swift
//  
//
//  Created by wallace wen on 2024/7/1.
//

import Foundation
import AppKit

final class HotKeysController: NSObject, NSApplicationDelegate {
    
    // MARK: - Types
    final class HotKeyBox {
        let identifier: UUID
        weak var hotKey: HotKey?
        var eventMonitor: Any?

        init(hotKey: HotKey) {
            self.hotKey = hotKey
            self.identifier = hotKey.identifier
        }
    }
    
    // MARK: - Properties
    static private var hotKeys = [UUID: HotKeyBox]()
    
    private static var keyMonitor: Any?
    
    // MARK: - Functions
    private static func box(for hotKey: HotKey) -> HotKeyBox? {
        return hotKeys[hotKey.identifier];
    }
    
    static func register(_ hotKey: HotKey) {
        if hotKeys.values.first(where: { $0.identifier == hotKey.identifier }) != nil {
            return
        }
        
        let box = HotKeyBox(hotKey: hotKey)
        hotKeys[box.identifier] = box
        print(hotKey.identifier, hotKey.keyCombo.key?.rawValue, hotKey.keyCombo.modifiers)
        
        let monitor = NSEvent.addGlobalMonitorForEvents(matching: .keyDown) { event in
            print(event.characters, event.modifierFlags)
            if event.modifierFlags.isSuperset(of: hotKey.keyCombo.modifiers) {
                
                if (event.characters == hotKey.keyCombo.key?.rawValue) {
                    hotKey.keyDownHandler?()
                }
            }
        }
        
        box.eventMonitor = monitor
    }
    
    static func unregister(_ hotKey: HotKey) {
        // Find the box
        guard let box = self.box(for: hotKey) else {
            return
        }
        
        guard let monitor = box.eventMonitor else {
            return
        }
        
        NSEvent.removeMonitor(monitor)
        
        box.hotKey = nil
        hotKeys.removeValue(forKey: box.identifier)
    }
}
