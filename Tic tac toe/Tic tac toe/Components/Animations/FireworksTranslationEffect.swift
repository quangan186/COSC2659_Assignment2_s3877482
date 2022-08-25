//
//  FireworksTranslation.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 25/08/2022.
//

import SwiftUI

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
