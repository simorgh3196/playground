//
//  MyAlternativeScene.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct MyAlternativeScene: Scene {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }

    #if os(macOS)
    Settings {
      SettingsView()
    }
    #endif
  }
}
