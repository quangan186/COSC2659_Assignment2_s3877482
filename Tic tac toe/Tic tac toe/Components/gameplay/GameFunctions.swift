//
//  GameFunctions.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 20/08/2022.
//

import Foundation

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

func checkWinResult(for player: Player, in moves: [Move?]) -> Bool {
    let winCases: Set<Set<Int>> = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [0,3,6], [1,4,7], [2,4,6], [2,5,8]]
    
    let playerMoves = moves.compactMap({$0}).filter{$0.player == player}
    
    let playerPosition = Set(playerMoves.map{$0.boardIndex})
    
    for pattern in winCases where pattern.isSubset(of: playerPosition){
        return true
    }
    return false
}

func checkDrawResult(in moves: [Move?]) -> Bool {
    return moves.compactMap{$0}.count == 9
}
