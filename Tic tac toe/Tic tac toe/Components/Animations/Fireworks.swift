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

// Set explosion animation of fireworks
struct Firework: Shape {
  private var offset: CGFloat
  var animatableData: CGFloat {
    get { offset }
    set { offset = newValue }
  }
  
  let totalDistance: CGFloat
  
  init(isAnimating: Bool, totalDistance: CGFloat) {
    self.totalDistance = totalDistance
    self.offset = isAnimating ? totalDistance : 0.0
  }
  
  func path(in rect: CGRect) -> Path {
    var path = Path()
    if offset == 0.0 || offset == totalDistance {
      path.addEllipse(in: rect.applying(.init(scaleX: 0.5, y: 0.5)))
    } else {
      path.addEllipse(in: rect.offsetBy(dx: offset, dy: 0.0))
      path.addEllipse(in: rect.offsetBy(dx: offset / 2, dy: offset / 2))
      path.addEllipse(in: rect.offsetBy(dx: 0.0, dy: offset))
      path.addEllipse(in: rect.offsetBy(dx: -offset / 2, dy: offset / 2))
      path.addEllipse(in: rect.offsetBy(dx: -offset, dy: 0.0))
      path.addEllipse(in: rect.offsetBy(dx: -offset / 2, dy: -offset / 2))
      path.addEllipse(in: rect.offsetBy(dx: 0.0, dy: -offset))
      path.addEllipse(in: rect.offsetBy(dx: offset / 2, dy: -offset / 2))
    }
    return path
  }
}
