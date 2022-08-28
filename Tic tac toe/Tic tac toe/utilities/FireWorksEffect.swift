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

// Render firework effects
struct FireworksEffect: ViewModifier {
  
  let numberOfFireworks: Int
  
  func body(content: Content) -> some View {
    content
      .overlay(
        FireWorksView(numberOfFireworks: numberOfFireworks)
      )
  }
}
