/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Bui Quang An
  ID: 3877482
  Created  date: 25/08/2022
  Last modified: 28/08/2022
  Acknowledgement: Youtube.
*/

import SwiftUI

// Set animation effect for fireworks
struct FireworkTranslationEffect: GeometryEffect {
  private var percent: CGFloat
  var animatableData: CGFloat {
    get { percent }
    set { percent = newValue }
  }
  
  private let height: CGFloat
  
  init(isOn: Bool, height: CGFloat) {
    self.percent = isOn ? 1.0 : 0.0
    self.height = height
  }
  
  func effectValue(size: CGSize) -> ProjectionTransform {
    guard percent != 0, percent != 1 else { return ProjectionTransform(.identity) }
    let transform: CGAffineTransform
    if percent < 0.5 {
      let relativePercent = percent / 0.5
      transform = .init(translationX: 0.0, y: height * relativePercent)
    } else {
      transform = .init(translationX: 0.0, y: height)
    }
    
    return ProjectionTransform(transform)
  }
}
