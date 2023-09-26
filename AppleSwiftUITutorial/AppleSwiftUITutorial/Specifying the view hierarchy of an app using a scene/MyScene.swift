//
//  MyScene.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct MyScene: Scene {
  var body: some Scene {
    WindowGroup {
      TabView {
        ContentView()
          .tabItem {
            Label("Journal", systemImage: "book")
          }

        SettingsView()
          .tabItem {
            Label("Settings", systemImage: "gear")
          }
      }
    }
  }
}
