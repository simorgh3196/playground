//
//  TrainCars.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct DefaultSpacing: View {
  var body: some View {
    HStack {
      TrainCar(.rear)
      TrainCar(.middle)
      TrainCar(.front)
    }
    TrainTrack()
  }
}

#Preview {
  DefaultSpacing()
}
