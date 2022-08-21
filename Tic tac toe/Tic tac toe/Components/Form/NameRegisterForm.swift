//
//  NameRegisterForm.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 21/08/2022.
//

import SwiftUI

struct NameRegisterForm: View {
    @Binding var result: String
    @Binding var moves: [Move?]
    @Binding var round: Int
    @Binding var score: Int
    @Binding var playerName: String
    var body: some View {
        ZStack(alignment: .center){
            VStack{
                Text("Player Name").font(.custom("Roboto", size: 32)).fontWeight(.semibold).padding().foregroundColor(.white)
                TextField("Type your name", text: $playerName).padding(.horizontal).frame(height: 60).background(.white).cornerRadius(50)
                    HStack{
                        if validInput(name: playerName){
                            NavigationLink("Enter", destination: Gameplay(result: result, moves: moves, round: round, score: score, playerName: playerName)).frame(maxWidth: .infinity, maxHeight: 60).background(Color("blue")).foregroundColor(Color.white).cornerRadius(50)
                        }
                    }.padding(.vertical)
            }
        }.frame(maxHeight: .infinity, alignment: .center).background(.black).navigationBarHidden(true)
    }
    func validInput(name: String) -> Bool {
        if name.isEmpty || name.prefix(1) == " "{
            return false
        }
        return true
    }
}
