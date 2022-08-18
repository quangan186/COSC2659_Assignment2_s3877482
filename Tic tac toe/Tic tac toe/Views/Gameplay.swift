//
//  Gameplay.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct Gameplay: View {
    var body: some View {
        VStack{
            RoundScore()
            Board()
            Result()
        }.frame(maxHeight: .infinity, alignment: .top).background(.black)
        
    }
}

struct Gameplay_Previews: PreviewProvider {
    static var previews: some View {
        Gameplay()
    }
}
