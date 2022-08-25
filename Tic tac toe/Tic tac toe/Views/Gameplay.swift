//
//  Gameplay.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct Gameplay: View {
    @State var result = ""
    @State var moves: [Move?] = Array(repeating: nil, count: 9)
    @State var round = 1
    @State var score = 0
    @State var playerName = ""
    var body: some View {
        ZStack{
            VStack{
                RoundScore(round: round, score: score, name: playerName)
                Board(moves: $moves, result: $result)
                Result(result: $result, moves: $moves, round: $round, score: $score, name: $playerName)
            }.navigationBarHidden(true).frame(maxHeight: .infinity, alignment: .top).padding()
        }.background(.black)
        
        
    }
}
