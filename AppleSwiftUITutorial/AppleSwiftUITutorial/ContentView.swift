//
//  ContentView.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(Color.accentColor) // replace `foregroundColor` with `foregroundSytle`
      Text("Hello, world!")
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
