//
//  ViewSamples.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

enum ViewSamples {
  struct TextSample: View {
    var body: some View {
      VStack {
        Text("Hamlet")
          .font(.largeTitle)
        Text("by William Shakespeare")
          .font(.caption)
          .italic()
      }
    }
  }

  struct SymbolsSamples: View {
    var body: some View {
      HStack {
        Image(systemName: "folder.badge.plus")
        Image(systemName: "heart.circle.fill")
        Image(systemName: "alerm")
      }
      .symbolRenderingMode(.multicolor)
      .font(.largeTitle)
    }
  }

  struct LabelsSamples: View {
    var body: some View {
      Label("Favorite Books", systemImage: "books.vertical")
        .labelStyle(.titleAndIcon)
        .font(.largeTitle)
    }
  }

  struct ControlsSamples: View {
    @State var choiceTag = 0

    var body: some View {
      VStack {
        HStack {
          Picker("Choice Default", selection: $choiceTag) {
            Text("One").tag(0)
            Text("Two").tag(1)
            Text("Three").tag(2)
          }
          Button("OK") {}
        }
      }
    }
  }

  struct ImagesAndShapesSample: View {
    var body: some View {
      Image(.yellowDaisy) // can use image resource
        .resizable()
        .scaledToFit()
    }
  }

  struct ShapesSamples: View {
    var body: some View {
      HStack {
        Rectangle()
          .foregroundStyle(Color.blue)
        Circle()
          .foregroundStyle(Color.orange)
        RoundedRectangle(cornerRadius: 15, style: .continuous)
          .foregroundStyle(Color.green)
      }
      .aspectRatio(3.0, contentMode: .fit)
    }
  }
}

#Preview {
  VStack(spacing: 60) {
    ViewSamples.TextSample()
    ViewSamples.SymbolsSamples()
    ViewSamples.LabelsSamples()
    ViewSamples.ControlsSamples()
    ViewSamples.ImagesAndShapesSample()
    ViewSamples.ShapesSamples()
  }
  .padding()
}
