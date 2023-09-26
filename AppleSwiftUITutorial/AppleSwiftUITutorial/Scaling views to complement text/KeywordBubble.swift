//
//  KeywordBubble.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct KeywordBubbleDefaultPadding: View {
  let keyword: String
  let symbol: String

  @ScaledMetric(relativeTo: .title) var paddingWidth = 14.5

  var body: some View {
    Label(keyword, systemImage: symbol)
      .font(.title)
      .foregroundStyle(.white)
      .padding(paddingWidth)
      .background(.purple.opacity(0.75), in: Capsule())
  }
}

#Preview {
  let keywords = ["chives", "fern-leaf lavender"]

  return VStack {
    ForEach(keywords, id: \.self) { word in
      KeywordBubbleDefaultPadding(keyword: word, symbol: "leaf")
    }
  }
}
