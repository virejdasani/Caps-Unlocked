//
//  PopupView.swift
//  Caps Unlocked
//
//  Created by Virej Dasani on 18/03/22.
//

import SwiftUI

struct PopupView: View {
    var body: some View {
        VStack (spacing: 16) {
            VStack {
                Text("Caps Unlocked").font(.largeTitle)
            }
            Divider()
            
            Button("Quit") {
                print("Quit pressed")
                NSApp.terminate(self)
            }
        }
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
    }
}
