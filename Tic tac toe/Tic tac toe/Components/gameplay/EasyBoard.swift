//
//  Board.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct Board: View {
    let column: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    @Binding var moves: [Move?]
    @State private var isGameBoardDisabled = false
    @Binding var result: String
    @State var player: Player = .user
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                LazyVGrid(columns: column){
                    ForEach(0 ..< 9){ i in
                        ZStack{
                            Rectangle().frame(width: geometry.size.width/4, height: geometry.size.width/4).border(Color("Word"), width: 1)
                            Image(moves[i]? .indicator ?? "").resizable().frame(width: geometry.size.width/4 - 5, height: geometry.size.width/4 - 5)
                        }.onTapGesture {
                            if isSquareContained(in: moves, forIndex: i){
                                return
                            } else{
                                moves[i] = Move(player: .user, boardIndex: i)
                                playSound(sound: "player", type: "mp4")
                                if checkWinResult(for: .user, in: moves){
                                    result = "Win"
                                    return
                                }
                                if checkDrawResult(in: moves){
                                    result = "Draw"
                                    return
                                }
                            }
                            
                            isGameBoardDisabled = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                let botPosition = botMove(in: moves)
                                moves[botPosition] = Move(player: .bot, boardIndex: botPosition)
                                playSound(sound: "bot", type: "mp4")
                                isGameBoardDisabled = false
                                if checkWinResult(for: .bot, in: moves){
                                    result = "Lose"
                                    return
                                }
                            }
                        }
                    }
                }.padding(40)
            }.disabled(isGameBoardDisabled)
        }
    }
}
