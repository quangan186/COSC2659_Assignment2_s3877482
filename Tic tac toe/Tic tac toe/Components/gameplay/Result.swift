//
//  Result.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct Result: View {
    @Binding var result: String
    @Binding var moves: [Move?]
    @Binding var round: Int
    @Binding var score: Int
    
    var body: some View {
        VStack{
            Spacer()
            if result == "Win"{
                Text(result).foregroundColor(Color("blue") ).font(.custom("Roboto", size: 36)).fontWeight(.semibold).padding(.vertical)
                Button("Continue"){
                    round += 1
                    score += 3
                    moves = Array(repeating: nil, count: 9)
                    result = ""
                }.frame(maxWidth: .infinity, maxHeight: 60).background(Color("blue")).foregroundColor(Color.white).cornerRadius(50)
            }
            if result == "Draw"{
                Text(result).foregroundColor(.white).font(.custom("Roboto", size: 36)).fontWeight(.semibold).padding(.vertical)
                Button("Continue"){
                    moves = Array(repeating: nil, count: 9)
                    result = ""
                    round += 1
                    score += 1
                }.frame(maxWidth: .infinity, maxHeight: 60).background(Color("blue")).foregroundColor(Color.white).cornerRadius(50)
            }
            if result == "Lose"{
                Text(result).foregroundColor(Color("red") ).font(.custom("Roboto", size: 36)).fontWeight(.semibold).padding(.vertical)
                HStack{
                    Button("Play Again"){
                        moves = Array(repeating: nil, count: 9)
                        result = ""
                        round = 1
                        score = 0
                    }.frame(maxWidth: .infinity, maxHeight: 60).background(Color("red")).foregroundColor(Color.white).cornerRadius(50)
                    NavigationLink("Back to menu", destination: Menu()).frame(maxWidth: .infinity, maxHeight: 60).background(Color("blue")).foregroundColor(Color.white).cornerRadius(50)
                }
                
            }
            Spacer()
        }
    }
}
