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
    @State var hardMoves: [Move?] = Array(repeating: nil, count: 25)
    @State var round = 1
    @State var score = 0
    @State var playerName = ""
    @State var modeName = ""
    var body: some View {
        ZStack{
            VStack{
                if modeName == "Easy" {
                    RoundScore(round: round, score: score, name: playerName)
                    Board(moves: $moves, result: $result)
                    Result(result: $result, moves: $moves, round: $round, score: $score, name: $playerName, modeName: $modeName)
                }
                
                if modeName == "Hard" {
                    RoundScore(round: round, score: score, name: playerName)
                    HardBoard(moves: $hardMoves, result: $result)
                    HardResult(result: $result, moves: $hardMoves, round: $round, score: $score, name: $playerName, modeName: $modeName)
                }
                
            }.navigationBarHidden(true).frame(maxHeight: .infinity, alignment: .top).padding()
        }.background(Color("Mode")).onAppear(perform: {
            audioPlayer?.stop()
        })
    }
}
