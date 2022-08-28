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

struct Logo: View {
    var body: some View {
        HStack{
            Spacer()
            Text("Tic").foregroundColor(Color("blue")).font(.custom("Roboto", size: 100))
            Spacer()
            Spacer()
        }
        
        HStack{
            Text("Tac").foregroundColor(Color("Word")).font(.custom("Roboto", size: 100))
        }
        
        HStack{
            Spacer()
            Spacer()
            Text("Toe").foregroundColor(Color("red")).font(.custom("Roboto", size: 100))
            Spacer()
        }
    }
}
