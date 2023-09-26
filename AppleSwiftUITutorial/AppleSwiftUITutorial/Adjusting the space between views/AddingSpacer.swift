//
//  AddingSpacer.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct AddingSpacer: View {
  var body: some View {
    Text("Spacer")

    HStack {
      TrainCar(.rear)
      Spacer()
      TrainCar(.middle)
      Spacer()
      TrainCar(.front)
    }

    TrainTrack()
  }
}

#Preview {
  AddingSpacer()
}
