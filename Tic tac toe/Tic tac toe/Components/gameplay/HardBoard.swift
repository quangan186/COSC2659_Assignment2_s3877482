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

struct HardBoard: View {
    let column: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    
    @Binding var moves: [Move?]
    @State private var isGameBoardDisabled = false
    @Binding var result: String
    @State var player: Player = .user
    var body: some View {
        // Set up 5x5 board and functions for players and bot
        GeometryReader{ geometry in
            VStack{
                LazyVGrid(columns: column){
                    ForEach(0 ..< 25){ i in
                        ZStack{
                            Rectangle().frame(width: geometry.size.width/6, height: geometry.size.width/6).border(Color("Word"), width: 1)
                            Image(moves[i]? .indicator ?? "").resizable().frame(width: geometry.size.width/6 - 5, height: geometry.size.width/6 - 5)
                        }.onTapGesture {
                            if isSquareContained(in: moves, forIndex: i){
                                return
                            }
                            
                            moves[i] = Move(player: .user, boardIndex: i)
                            
                            if checkHardWinResult(for: .user, in: moves){
                                result = "Win"
                                return
                            }
                            if checkHardDrawResult(in: moves){
                                result = "Draw"
                                return
                            }
                            
                            isGameBoardDisabled = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                let botPosition = botHardModeMove(in: moves)
                                moves[botPosition] = Move(player: .bot, boardIndex: botPosition)
                                playSound(sound: "bot", type: "mp4")
                                isGameBoardDisabled = false
                                if checkHardWinResult(for: .bot, in: moves){
                                    result = "Lose"
                                    return
                                }
                            }
                        }
                    }
                }
            }.disabled(isGameBoardDisabled)
        }
    }
}
