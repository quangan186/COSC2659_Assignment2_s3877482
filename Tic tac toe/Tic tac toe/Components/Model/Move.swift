/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Bui Quang An
  ID: 3877482
  Created  date: 20/08/2022
  Last modified: 28/08/2022
  Acknowledgement: Youtube.
*/

import Foundation

struct Move{
    let player: Player
    let boardIndex: Int
    
    var indicator: String {
        return player == .user ? "x" : "o"
    }
}
