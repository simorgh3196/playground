//
//  IfElseTrain.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct IfElseTrain: View {
  var longerTrain: Bool
  var fixedWidth: Bool

  var body: some View {
    VStack {
      HStack {
        Image(systemName: "train.side.rear.car")

        if fixedWidth {
          if longerTrain {
            Image(systemName: "train.side.middle.car")
          }
        } else {
          Image(systemName: "train.side.middle.car")
            .opacity(longerTrain ? 1 : 0)
        }

        Image(systemName: "train.side.front.car")
      }
      Divider()
    }
  }
}

#Preview {
  VStack(spacing: 20) {
    IfElseTrain(longerTrain: true, fixedWidth: true)
    IfElseTrain(longerTrain: false, fixedWidth: true)
    IfElseTrain(longerTrain: true, fixedWidth: false)
    IfElseTrain(longerTrain: false, fixedWidth: false)
  }
}
