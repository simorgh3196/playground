//
//  ZeroSpacing.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct ZeroSpacing: View {
  var body: some View {
    Text("Zero Spacing")

    HStack(spacing: 0) {
      TrainCar(.rear)
      TrainCar(.middle)
      TrainCar(.front)
    }
    TrainTrack()
  }
}

#Preview {
  ZeroSpacing()
}
