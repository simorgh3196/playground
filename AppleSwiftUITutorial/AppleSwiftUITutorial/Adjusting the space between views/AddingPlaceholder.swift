//
//  AddingPlaceholder.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct AddingPlaceholder: View {
  var body: some View {
    Text("Spacing with a Placeholder")

    HStack {
      TrainCar(.rear)
      ZStack {
        TrainCar(.middle)
          .font(.largeTitle)
          .opacity(0)
          .background(.blue)
        TrainCar(.middle)
      }
      TrainCar(.front)

    }

    TrainTrack()
  }
}

#Preview {
  AddingPlaceholder()
}
