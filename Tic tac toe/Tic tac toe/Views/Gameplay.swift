/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Bui Quang An
  ID: 3877482
  Created  date: 18/08/2022
  Last modified: 28/08/2022
  Acknowledgement: Youtube.
*/

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
                // Render Easy mode
                if modeName == "Easy" {
                    RoundScore(round: round, score: score, name: playerName)
                    Board(moves: $moves, result: $result)
                    Result(result: $result, moves: $moves, round: $round, score: $score, name: $playerName, modeName: $modeName)
                }
                // Render Hard mode
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
