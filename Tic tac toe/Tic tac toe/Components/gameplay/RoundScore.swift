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

struct RoundScore: View {
    var round: Int
    var score: Int
    var name: String
    var body: some View {
        // Render status: round, name, and the current score
        HStack{
            Text("Round: \(round)").foregroundColor(Color("Word")).font(.custom("Roboto", size: 20)).fontWeight(.semibold).padding()
            Spacer()
            Text(name).foregroundColor(Color("Word")).font(.custom("Roboto", size: 20)).fontWeight(.semibold).padding()
            Spacer()
            Text("Score: \(score)").foregroundColor(Color("Word")).font(.custom("Roboto", size: 20)).fontWeight(.semibold).padding()
        }
    }
}
