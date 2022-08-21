//
//  RoundScore.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct RoundScore: View {
    var round: Int
    var score: Int
    var name: String
    var body: some View {
        HStack{
            Text("Round: \(round)").foregroundColor(.white ).font(.custom("Roboto", size: 28)).fontWeight(.semibold).padding()
            Spacer()
            Text(name).foregroundColor(.white ).font(.custom("Roboto", size: 28)).fontWeight(.semibold).padding()
            Spacer()
            Text("Score: \(score)").foregroundColor(.white ).font(.custom("Roboto", size: 28)).fontWeight(.semibold).padding()
        }
    }
}
