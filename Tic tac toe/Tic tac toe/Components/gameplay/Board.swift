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

    var body: some View {
        GeometryReader{ geometry in
            VStack{
                LazyVGrid(columns: column){
                    ForEach(0 ..< 9){ i in
                        ZStack{
                            Rectangle().frame(width: geometry.size.width/4, height: geometry.size.width/4).border(.white, width: 1)
                            Image(moves[i]? .indicator ?? "").resizable().frame(width: 40, height: 40)
                        }.onTapGesture {
                            if isSquareContained(in: moves, forIndex: i){
                                return
                            }
                            moves[i] = Move(player: .user, boardIndex: i)
//                            isHumanTurned.toggle()
                            
                            if checkWinResult(for: .user, in: moves){
//                                print("User wins")
                                result = "Win"
                                return
                            }
                            if checkDrawResult(in: moves){
//                                print("Draw")
                                result = "Draw"
                                return
                            }
                            
                            isGameBoardDisabled = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                let botPosition = botMove(in: moves)
                                moves[botPosition] = Move(player: .bot, boardIndex: botPosition)
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
