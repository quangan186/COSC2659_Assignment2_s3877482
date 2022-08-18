//
//  Instruction.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct Instruction: View {
    var body: some View {
        Text("- Player will go first in the first round, the next round will be bot").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
        Text("- Each round will change who goes first").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
        Text("- The first player to get 3 of marks in a row (up, down, across, or diagonally) is the winner.").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
        Text("- The first player to get 3 of marks in a row (up, down, across, or diagonally) is the winner.").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
        Text("- When all 9 squares are full, the game is over. If no one has 3 marks in a row, the game ends in a tie.").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
        Text("- The game will continue until bot wins").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
        Text("- Win gets 3 points, draw gets 1 points").frame(maxWidth: .infinity, alignment: .leading).padding(.vertical)
    }
}

struct Instruction_Previews: PreviewProvider {
    static var previews: some View {
        Instruction()
    }
}
