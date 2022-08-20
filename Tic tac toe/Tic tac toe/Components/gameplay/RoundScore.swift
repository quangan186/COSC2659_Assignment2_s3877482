//
//  RoundScore.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct RoundScore: View {
    @State var round: Int
    @State var score: Int
    
    var body: some View {
        HStack{
            Text("Round: \(round)").foregroundColor(.white ).font(.custom("Roboto", size: 28)).fontWeight(.semibold).padding()
            Spacer()
            Text("Score: \(score)").foregroundColor(.white ).font(.custom("Roboto", size: 28)).fontWeight(.semibold).padding()
        }
    }
}

