//
//  TrainCar.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

enum TrainSymbol: String {
  case front = "train.side.front.car"
  case middle = "train.side.middle.car"
  case rear = "train.side.rear.car"
}

struct TrainCar: View {
  let position: TrainSymbol
  let showFrame: Bool

  init(_ position: TrainSymbol, showFrame: Bool = true) {
    self.position = position
    self.showFrame = showFrame
  }

  var body: some View {
    Image(systemName: position.rawValue)
      .padding(2)
      .background(.pink)
  }
}

struct TrainTrack: View {
  var body: some View {
    Divider()
      .frame(maxWidth: 200)
  }
}

#Preview {
  TrainCar(.front)
}
