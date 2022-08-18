//
//  RoundScore.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct RoundScore: View {
    var body: some View {
        HStack{
            Text("Round: 5").foregroundColor(.white ).font(.custom("Roboto", size: 28)).fontWeight(.semibold)
            Spacer()
            Text("Score: 15").foregroundColor(.white ).font(.custom("Roboto", size: 28)).fontWeight(.semibold)
        }.padding()
    }
}

struct RoundScore_Previews: PreviewProvider {
    static var previews: some View {
        RoundScore()
    }
}
