//
//  CaptionedPhoto.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct CaptionedPhoto: View {
  let assetResource: ImageResource
  let captionText: String

  var body: some View {
    Image(assetResource)
      .resizable()
      .scaledToFit()
      .overlay(alignment: .bottom) {
        Caption(text: captionText)
      }
      .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
      .padding()
  }
}

struct Caption: View {
  let text: String

  var body: some View {
    Text(text)
      .padding()
      .background(Color(.textContrast).opacity(0.75),
                  in: RoundedRectangle(cornerRadius: 10.0, style: .continuous))
      .padding()
  }
}

#Preview {
  let landscapeResource = ImageResource.landscape
  let landscapeCaption = "This photo is wider than it is tall."
  let portraitResource = ImageResource.portrait
  let portraitCaption = "This photo is taller than it is wide."

  return VStack {
    CaptionedPhoto(assetResource: portraitResource, captionText: portraitCaption)

    CaptionedPhoto(assetResource: landscapeResource, captionText: landscapeCaption)
      .preferredColorScheme(.dark)

    CaptionedPhoto(assetResource: landscapeResource, captionText: landscapeCaption)
      .preferredColorScheme(.light)
  }
}
