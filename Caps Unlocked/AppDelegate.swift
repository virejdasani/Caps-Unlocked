//
//  AppDelegate.swift
//  Caps Unlocked
//
//  Created by Virej Dasani on 18/03/22.
//

import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    
    var statusItem: NSStatusItem!
    let popover = NSPopover()
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        print("Caps Unlocked launched")
        setupMenubar()
        setupPopover()
    }
}


// MARK: MENU BAR
extension AppDelegate {
    func setupMenubar() {
        
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        
        guard let menuButton = statusItem.button else { return }
        
        menuButton.title = "Caps Unlocked"
        menuButton.image = NSImage(systemSymbolName: "capslock", accessibilityDescription: nil)
    
        menuButton.action = #selector(menuButtonClicked)
    }
    
    @objc func menuButtonClicked() {
        print("menubar icon clicked")
        if popover.isShown {
            popover.performClose(nil)
            return
        }
        
        guard let menuButton = statusItem.button else { return }
        popover.show(relativeTo: menuButton.bounds, of: menuButton, preferredEdge: .maxY)
        popover.contentViewController?.view.window?.makeKey()
    }
}

// MARK: POPOVER
extension AppDelegate {
    func setupPopover() {
        popover.behavior = .transient
        popover.animates = true
        popover.contentSize = .init(width: 240, height: 280)
        popover.contentViewController = NSViewController()
        popover.contentViewController?.view = NSHostingView(
            rootView: PopupView().frame(maxWidth: .infinity, maxHeight: .infinity).padding()
            
        )
    }
}
