/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Bui Quang An
  ID: 3877482
  Created  date: 18/08/2022
  Last modified: 28/08/2022
  Acknowledgement: N/A.
*/

import SwiftUI

struct Instruction: View {
    var body: some View {
        Text("- Player will go first").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
        Text("- The first player to get 3 or 5 of marks in a row (up, down, across, or diagonally) is the winner.").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
        Text("- When all 9 or 25 squares are full, the game is over. If no one has 3 marks in a row, the game ends in a tie.").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
        Text("- The game will continue until bot wins").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
        Text("- Win gets 3 points, draw gets 1 points").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
        Text("- There are 2 modes: Easy (3x3) and Hard (5x5). Player can choose by directing to Menu and selecting Settings to change").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
    }
}
