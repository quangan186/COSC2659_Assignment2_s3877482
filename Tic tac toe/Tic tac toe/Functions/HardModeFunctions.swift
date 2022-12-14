/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Bui Quang An
  ID: 3877482
  Created  date: 26/08/2022
  Last modified: 28/08/2022
  Acknowledgement: Youtube.
*/

import Foundation

// Make bot move
func botHardModeMove(in moves: [Move?]) -> Int{
    let winCases: Set<Set<Int>> = [[0,1,2,3,4], [5,6,7,8,9], [10,11,12,13,14], [15,16,17,18,19], [20,21,22,23,24], [0,5,10,15,20], [0,6,12,18,24], [1,6,11,16,21], [2,7,12,17,22], [3,8,13,18,23], [4,9,14,19,24], [4,8,12,16,20]]
    
    // Check if players have 4 of marks in row to block the last block and if the bot have 4 of marks in row, it will choose the last square if players do not block them.
    
    let computerMoves = moves.compactMap({$0}).filter{$0.player == .bot}
    
    let computerPosition = Set(computerMoves.map{$0.boardIndex})
    
    for winCase in winCases {
        let winPosition = winCase.subtracting(computerPosition)
        if winPosition.count == 1{
            let isAvailable = !isSquareContained(in: moves, forIndex: winPosition.first!)
            if isAvailable{
                return winPosition.first!
            }
        }
    }
    
    let playerMoves = moves.compactMap({$0}).filter{$0.player == .user}
    
    let playerPosition = Set(playerMoves.map{$0.boardIndex})
    
    for winCase in winCases {
        let winPosition = winCase.subtracting(playerPosition)
        
        if winPosition.count == 1{
            let isAvailable = !isSquareContained(in: moves, forIndex: winPosition.first!)
            if isAvailable{
                return winPosition.first!
            }
        }
    }
    
    // Check if the square in the center of the board is empty. If players do not move in that first, bot will go there
    let centerBoard = 12
    if !isSquareContained(in: moves, forIndex: centerBoard){
        return centerBoard
    }
    
    var movePosition = Int.random(in: 0..<25)
    while (isSquareContained(in: moves, forIndex: movePosition)){
        movePosition = Int.random(in: 0..<25)
    }
    return movePosition
}

// check result
func checkHardWinResult(for player: Player, in moves: [Move?]) -> Bool {
    let winCases: Set<Set<Int>> = [[0,1,2,3,4], [5,6,7,8,9], [10,11,12,13,14], [15,16,17,18,19], [20,21,22,23,24], [0,5,10,15,20], [0,6,12,18,24], [1,6,11,16,21], [2,7,12,17,22], [3,8,13,18,23], [4,9,14,19,24], [4,8,12,16,20]]
    
    let playerMoves = moves.compactMap({$0}).filter{$0.player == player}
    
    let playerPosition = Set(playerMoves.map{$0.boardIndex})
    
    for pattern in winCases where pattern.isSubset(of: playerPosition){
        return true
    }
    return false
}

// Check if the result is tie
func checkHardDrawResult(in moves: [Move?]) -> Bool {
    return moves.compactMap{$0}.count == 25
}
