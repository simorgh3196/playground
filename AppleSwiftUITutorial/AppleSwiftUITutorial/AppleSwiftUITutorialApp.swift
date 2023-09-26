//
//  AppleSwiftUITutorialApp.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI
import SwiftData

@main
struct AppleSwiftUITutorialApp: App {
  var body: some Scene {
    #if os(iOS)
    MyScene()
    #elseif os(macOS)
    MyAlternativeScene()
    #endif
  }
}
