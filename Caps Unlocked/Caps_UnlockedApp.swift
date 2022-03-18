//
//  Caps_UnlockedApp.swift
//  Caps Unlocked
//
//  Created by Virej Dasani on 18/03/22.
//

import SwiftUI

@main
struct Caps_UnlockedApp: App {
    
    @NSApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            EmptyView().frame(width: 0, height: 0)
        }
        
    }
}
