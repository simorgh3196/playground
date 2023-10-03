//
//  SpecificSpacing.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct SpecificSpacing: View {
  @ScaledMetric var trainCarSpace = 5

  var body: some View {
    Text("Spacific Spacing")

    HStack(spacing: trainCarSpace) {
      TrainCar(.rear)
      TrainCar(.middle)
      TrainCar(.front)
    }

    TrainTrack()
  }
}

#Preview {
  SpecificSpacing()
}
