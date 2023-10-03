//
//  DefaultPadding.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct DefaultPadding: View {
  var body: some View {
    Text("Default Padding")

    HStack {
      TrainCar(.rear)
      TrainCar(.middle)
      TrainCar(.front)
    }

    TrainTrack()
  }
}

#Preview {
  DefaultPadding()
}
