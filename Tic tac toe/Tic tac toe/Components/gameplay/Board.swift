//
//  Board.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct Board: View {
    let column: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    @State private var moves: [Move?] = Array(repeating: nil, count: 9)
    @State private var isGameBoardDisabled = false
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
                            isGameBoardDisabled = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                let botPosition = botMove(in: moves)
                                moves[botPosition] = Move(player: .bot, boardIndex: botPosition)
                                isGameBoardDisabled = false
                            }
                        
                        }
                    }
                }.padding(40)
            }.disabled(isGameBoardDisabled)
        }
    }
    
    func isSquareContained(in moves: [Move?], forIndex index: Int) -> Bool{
        return moves.contains(where: {$0?.boardIndex == index})
    }
    
    func botMove(in moves: [Move?]) -> Int{
        var movePosition = Int.random(in: 0..<9)
        while (isSquareContained(in: moves, forIndex: movePosition)){
            movePosition = Int.random(in: 0..<9)
        }
        return movePosition
    }
    
    func checkResult(){
        
    }
}

enum Player{
    case user, bot
}

struct Move{
    let player: Player
    let boardIndex: Int
    
    var indicator: String {
        return player == .user ? "x" : "o"
    }
}

struct Board_Previews: PreviewProvider {
    static var previews: some View {
        Board()
    }
}
