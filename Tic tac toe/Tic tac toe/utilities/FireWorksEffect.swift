//
//  FireWorksEffect.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 25/08/2022.
//

import SwiftUI

struct FireworksEffect: ViewModifier {
  
  let numberOfFireworks: Int
  
  func body(content: Content) -> some View {
    content
      .overlay(
        FireWorksView(numberOfFireworks: numberOfFireworks)
      )
  }
}
