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

// Render the fireworks UI
struct FireWorksView: View {
  let numberOfFireworks: Int
  @State private var xPosition: [CGFloat]
  @State private var yPosition: [CGFloat]
  @State private var colors: [Color]
  @State private var animated: [Bool]
  
  init(numberOfFireworks: Int) {
    let randomColors: [Color] = [
      .blue, .cyan, .red, .yellow, .purple, .pink, .green
    ]
    self.numberOfFireworks = numberOfFireworks
    xPosition = (0 ..< numberOfFireworks)
      .map { _ in CGFloat.random(in: 0 ... 0.5) * (Bool.random() ? -1 : 1) }
    yPosition = (0 ..< numberOfFireworks)
      .map { _ in CGFloat.random(in: 0 ... 0.5) }
    colors = (0 ..< numberOfFireworks)
      .map { _ in randomColors.randomElement() ?? .blue }
    animated = (0 ..< numberOfFireworks)
      .map { _ in false }
  }
  
  var body: some View {
    GeometryReader { geometry in
      let width = geometry.size.width
      let height = geometry.size.height
      let size = width * 0.05
      ZStack {
        Rectangle().fill(Color.clear)
        Group {
          ForEach(0 ..< numberOfFireworks, id: \.self) { index in
            Firework(isAnimating: animated[index], totalDistance: size * 2)
              .fill(colors[index])
              .frame(width: size, height: size)
              .offset(
                x: width * xPosition[index],
                y: height * yPosition[index]
              )
              .animation(.linear(duration: 0.5)
                          .delay(0.5)
                          .repeatForever(autoreverses: false),
                         value: animated[index])
              .modifier(
                FireworkTranslationEffect(isOn: animated[index], height: -height / 2)
              )
              .animation(.linear(duration: 1.0)
                          .repeatForever(autoreverses: false),
                         value: animated[index])
              .opacity(animated[index] ? 1.0 : 0.0)
          }
        }
      }
    }
    .onAppear {
      for index in 0 ..< numberOfFireworks {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2 + 0.2 * Double(index)) {
          self.animated[index] = true
        }
      }
    }
  }
}
