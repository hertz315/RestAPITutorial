//
//  Button+Style.swift
//  RestAPITutorial
//
//  Created by Hertz on 11/12/22.
//

import Foundation
import SwiftUI

struct MyDefaultBtnStyle: ButtonStyle {
    var bgColor: Color = Color.blue
    var textColor: Color = Color.white
    
    init(bgColor: Color = Color.blue, textColor: Color = Color.white) {
        self.bgColor = bgColor
        self.textColor = textColor
    }
    
  func makeBody(configuration: Configuration) -> some View {
    HStack {
      Spacer()
      configuration.label
            .lineLimit(2)
            .minimumScaleFactor(0.6)
            .foregroundColor(textColor)
      Spacer()
    }
    .padding()
    .background(bgColor.cornerRadius(12))
    .scaleEffect(configuration.isPressed ? 0.95 : 1)
  }
}
