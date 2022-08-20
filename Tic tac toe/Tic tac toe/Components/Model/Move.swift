//
//  Move.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 20/08/2022.
//

import Foundation

struct Move{
    let player: Player
    let boardIndex: Int
    
    var indicator: String {
        return player == .user ? "x" : "o"
    }
}
