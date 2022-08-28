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

// Setup snow effect
struct SnowEffect: ViewModifier {
  func body(content: Content) -> some View {
    let numberOfFlakes = 30
    let yPercents = (0 ..< numberOfFlakes).map { _ in CGFloat.random(in: 0 ... 1.0) }
    let xSigns = (0 ..< numberOfFlakes).map { _ in Bool.random() }
    
    content
      .overlay(
        TimelineView(.animation) { timeline in
          Canvas { context, size in
            let flakeSize = CGSize(
              width: size.width / CGFloat(numberOfFlakes),
              height: size.width / CGFloat(numberOfFlakes))
            let yOffset = timeline.date.timeIntervalSinceReferenceDate * size.height * 0.25
            (0 ..< numberOfFlakes).forEach { index in
              let xOffset = cos(timeline.date.timeIntervalSinceReferenceDate * 3) * flakeSize.width * CGFloat(xSigns[index] ? 1 : -1)
              let percent = CGFloat(index) / CGFloat(numberOfFlakes)
              let xCoordinate = percent * size.width + xOffset
              let yCoordinate = yPercents[index] * size.height + yOffset
              let point = CGPoint(x: xCoordinate,
                                  y: boundedYPosition(yCoordinate: yCoordinate, inSize: size))
              let fillRect = CGRect(
                origin: point,
                size: flakeSize)
                context.fill(Circle().path(in: fillRect), with: .color(Color("Word")))
            }
          }
        }
          .allowsHitTesting(false)
      )
  }
  
  private func boundedYPosition(yCoordinate: CGFloat, inSize size: CGSize) -> CGFloat {
    yCoordinate - CGFloat(Int(yCoordinate / size.height)) * size.height
  }
}
