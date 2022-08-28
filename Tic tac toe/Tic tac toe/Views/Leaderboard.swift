/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Bui Quang An
  ID: 3877482
  Created  date: 18/08/2022
  Last modified: 28/08/2022
  Acknowledgement: Hackingwithswift.
*/

import SwiftUI

struct Leaderboard: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("Player").foregroundColor(Color("blue")).fontWeight(.semibold).font(.custom("Roboto", size: 28))
                    Spacer()
                    
                    Text("Mode").foregroundColor(Color("Word")).fontWeight(.semibold).font(.custom("Roboto", size: 28))
                    Spacer()
                    
                    Text("Score").foregroundColor(Color("red")).fontWeight(.semibold).font(.custom("Roboto", size: 28))
                }
                // Render history list
                HistoryList()
            }.navigationTitle("Leaderboard").navigationBarTitleDisplayMode(.automatic).padding().foregroundColor(Color("Word"))
        }.background(Color("Mode"))
    }
}
